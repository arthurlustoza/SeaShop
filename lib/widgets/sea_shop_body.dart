import 'package:flutter/material.dart';

class SeaShopBody extends StatelessWidget {
  const SeaShopBody({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 14,
      padding: const EdgeInsets.all(
        16,
      ), // Responsavel para dar margem nas bordas
      childAspectRatio: 1.4, //Aumenta a altura, para evitar estouro de card
      children: List.generate(4, (index) {
        return Card(
          elevation: 2,
          clipBehavior:
              Clip.antiAlias, // Delimita para evitar a ultrapassar a borda !
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment
                .center, // Controlar elementos filhos alinhados ao longo do eixo transversal
            children: [
              SizedBox(
                width: 100, // Largura para diminuir ou aumentar a imagem
                height: double.infinity, //ocupa a altura total do card
                child: Image.network(
                  'https://images.unsplash.com/photo-1530216088905-4007f55c6170?q=80&w=764&auto=format&fit=crop',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Concha',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5), // Pequeno espacamento
                      const Text(
                        '29,90',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                      // Espaco para funcionalidades futuras
                      const SizedBox(height: 1),
                    ], //children
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
