import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'sea_shop_product_detail_screen.dart';

class SeaShopBody extends StatelessWidget {
  const SeaShopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      // 1. Escuta a coleção 'products' do Firestore em tempo real
      stream: FirebaseFirestore.instance.collection('products').snapshots(),
      builder: (context, snapshot) {
        // Estado de carregamento
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        // Tratamento de erros
        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Erro ao carregar produtos:\n${snapshot.error}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        // Estado sem dados
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('Nenhum produto encontrado.'));
        }

        // 2. Converte os documentos do Firestore em uma lista de Map
        final List<Map<String, dynamic>> products = snapshot.data!.docs.map((
          doc,
        ) {
          final data = doc.data() as Map<String, dynamic>;
          data['id'] = doc.id; // Inclui o ID único do documento
          return data;
        }).toList();

        return GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 180,
            mainAxisExtent: 195,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];

            // Tratamento das imagens
            final List? images = product['images'] as List?;
            final String coverImage = (images != null && images.isNotEmpty)
                ? images[0].toString()
                : '';

            // Tratamento do preço (suporta número do Firestore ou string)
            final dynamic rawPrice = product['price'];
            final String formattedPrice = rawPrice is num
                ? 'R\$ ${rawPrice.toStringAsFixed(2).replaceAll('.', ',')}'
                : (rawPrice?.toString() ?? 'R\$ 0,00');

            final String title = product['title'] ?? 'Sem título';

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      product: product,
                      allProducts:
                          products, // Mantém a compatibilidade com a tela de detalhes
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: title,
                      child: SizedBox(
                        height: 120,
                        child: coverImage.isNotEmpty
                            ? Image.network(
                                coverImage,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.broken_image, size: 50),
                              )
                            : const Icon(Icons.image_not_supported, size: 50),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            formattedPrice,
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
