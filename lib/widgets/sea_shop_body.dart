import 'package:flutter/material.dart';
import 'sea_shop_product_detail_screen.dart';

class SeaShopBody extends StatelessWidget {
  SeaShopBody({super.key});

  final List<Map<String, dynamic>> products = [
    {
      'title': 'Concha',
      'price': 'R\$ 29,90',
      'images': [
        'https://images.unsplash.com/photo-1530216088905-4007f55c6170?q=80&w=764&auto=format&fit=crop',
        'https://images.unsplash.com/photo-1530216421037-11e7a48ae76c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGNvbmNoYXxlbnwwfHwwfHx8MA%3D%3D'
            'https://plus.unsplash.com/premium_photo-1667249055026-969eb5ab4b5a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fGNvbmNoYXxlbnwwfHwwfHx8MA%3D%3D',
      ],
      'description':
          'Valva marinha natural polida, peça versátil para artesanato, coleções e ornamentação.',
    },
    {
      'title': 'Flores do mar',
      'price': 'R\$ 18,50',
      'images': [
        'https://images.unsplash.com/photo-1699618888274-4507a31c5e5c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmxvciUyMGRvJTIwbWFyfGVufDB8fDB8fHww',
        'https://media.istockphoto.com/id/1148452929/pt/foto/red-poppies-flowering-in-pomorie-bulgaria.webp?a=1&b=1&s=612x612&w=0&k=20&c=59AqQlFL87YJBY69nb8p3klAHhnQNPvIZQr6u2yDLGs=',
        'https://media.istockphoto.com/id/1411691139/pt/foto/view-through-an-open-window-with-shutters-of-the-sandy-beach-rocky-coastline-and-whitewashed.webp?a=1&b=1&s=612x612&w=0&k=20&c=ySxVzsGhindjTR5lxco-bBDk7PtnfKXAtcOwI6UpRKA=',
      ],
      'description':
          'Organóides marinhos delicados com formas florais, exóticos e decorativos',
    },
    {
      'title': 'Coral',
      'price': 'R\$ 45,00',
      'images': [
        'https://images.unsplash.com/photo-1582967788606-a171c1080cb0?q=80&w=800&auto=format&fit=crop',
        'https://images.unsplash.com/photo-1546026423-cc4642628d2b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Q29yYWx8ZW58MHx8MHx8fDA%3D',
        'https://images.unsplash.com/photo-1582623838120-455da222cdc7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fENvcmFsfGVufDB8fDB8fHww',
      ],
      'description':
          'Estrutura calcária ornamental natural, ideal para decoração temática e aquarismo avançado',
    },
    {
      'title': 'Estrela do Mar',
      'price': 'R\$ 23,00',
      'images': [
        'https://images.unsplash.com/photo-1471357674240-e1a485acb3e1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZXN0cmVsYSUyMGRvJTIwbWFyfGVufDB8fDB8fHww',
        'https://images.unsplash.com/photo-1514503612056-e3f673b3f3bd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZXN0cmVsYSUyMGRvJTIwbWFyfGVufDB8fDB8fHww',
        'https://images.unsplash.com/photo-1588518008356-bbd53d98e410?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGVzdHJlbGElMjBkbyUyMG1hcnxlbnwwfHwwfHx8MA%3D%3D',
      ],
      'description':
          'Espécime preservado com simetria radial marcante, clássico para decoração praiana',
    },
    {
      'title': 'Pepino do mar',
      'price': 'R\$ 12,00',
      'images': [
        'https://media.istockphoto.com/id/2229721285/pt/foto/tubular-sea-cucumber-underwater-photography.webp?a=1&b=1&s=612x612&w=0&k=20&c=z3CScAxD-2R2UcLEVRRDEw1P8Dqia4_cBaavwqKj590=',
        'https://images.unsplash.com/photo-1702045995820-86b63e87e364?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHBlcGlubyUyMGRvJTIwbWFyfGVufDB8fDB8fHww',
        'https://media.istockphoto.com/id/515518016/pt/foto/pepino-do-mar.webp?a=1&b=1&s=612x612&w=0&k=20&c=DIXbKImUkx4ADn3hVi9VZG6hUsTFO5uIvMbROq9SA5I=',
      ],
      'description':
          'Espécime marinho exótico, textura firme e elevado valor gastronômico em culinárias asiáticas.',
    },
    {
      'title': 'Pérola',
      'price': 'R\$ 1.888,00',
      'images': [
        'https://images.unsplash.com/photo-1611444111920-89dfc4a01f43?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVhcmx8ZW58MHx8MHx8fDA%3D',
        'https://media.istockphoto.com/id/91819102/pt/foto/ostra-e-p%C3%A9rolas.webp?a=1&b=1&s=612x612&w=0&k=20&c=3XyDAh-yFVSrDh7oGkh9f59dmgEnPxFXYnTaL85XRUg=',
        'https://media.istockphoto.com/id/626446888/pt/foto/glossy-white-nails.webp?a=1&b=1&s=612x612&w=0&k=20&c=2DxmVZwnhzJYvVj5F4DRR0VPdC6_fHV4epK-Tr9S3Uc=',
      ],
      'description':
          'Gema orgânica brilhante gerada em ostras, sinônimo de sofisticação para joalheria fina.',
    },
    {
      'title': 'Coco Raro',
      'price': 'R\$ 1.000,00',
      'images': [
        'https://images.unsplash.com/photo-1581453883350-288b2c19bea8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29jb251dHxlbnwwfHwwfHx8MA%3D%3D',
        'https://plus.unsplash.com/premium_photo-1663011531009-c43479a672e8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Q29jbyUyMHJhcm98ZW58MHx8MHx8fDA%3D',
        'https://images.unsplash.com/photo-1617855007712-bc2a2debb32a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fENvY28lMjByYXJvfGVufDB8fDB8fHww',
      ],
      'description':
          'Coco exótico de origem costeira, polpa rica em óleo e água de coco altamente nutritiva.',
    },
    {
      'title': 'Algas',
      'price': 'R\$ 23,00',
      'images': [
        'https://media.istockphoto.com/id/2246346032/pt/foto/closeup-green-laminaria-kelp-seaweed-for-healthy-food-3d-illustration-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=4fc6N4qs4U_YOKd2pugOf8MO_XLuO3KgoZcJX00tOxY=',
        'https://media.istockphoto.com/id/90628025/pt/foto/aqu%C3%A1rio-de-vida.webp?a=1&b=1&s=612x612&w=0&k=20&c=7h3lIYCKXwMNAkHYReruz_Ft-sueU3lERiL-vuugU7w=',
        'https://media.istockphoto.com/id/1458099395/pt/foto/lush-green-sea-grass-underwater.webp?a=1&b=1&s=612x612&w=0&k=20&c=fmpGYxZkyNtHrIyL0U5yuJsHVQjt8rDW8HURw0uXGX8=',
      ],
      'description':
          'Variedade de macroalgas frescas, fontes essenciais de minerais, sais e aplicações versáteis.',
    },
    {
      'title': 'Alga Vermelha',
      'price': 'R\$ 12,00',
      'images': [
        'https://media.istockphoto.com/id/1483091366/pt/foto/rhodophyta-red-algae-branch-isolated-on-white.webp?a=1&b=1&s=612x612&w=0&k=20&c=g4CeZhTd6m9dZIaphlR4Byp-F60i1z634wIH1crpKj0=',
        'https://images.unsplash.com/photo-1777891734041-2e7b0d2db5f7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YWxnYXMlMjB2ZXJtZWxoYXN8ZW58MHx8MHx8fDA%3D',
        'https://images.unsplash.com/photo-1737470723784-fab573513c28?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGFsZ2FzJTIwdmVybWVsaGFzfGVufDB8fDB8fHww',
      ],
      'description':
          'Alga rica em nutrientes, ideal para uso culinário, cosmético e suplementação natural.',
    },
  ];

  @override
  Widget build(BuildContext context) {
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

        // 1. Extração segura da primeira imagem
        final List? images = product['images'] as List?;
        final String coverImage = (images != null && images.isNotEmpty)
            ? images[0]
            : '';

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                  product: product,
                  allProducts: products, // Passa a lista completa
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
                  tag: product['title']!,
                  child: SizedBox(
                    height: 120,
                    // 2. Condicional para renderizar imagem ou um ícone de fallback
                    child: coverImage.isNotEmpty
                        ? Image.network(coverImage, fit: BoxFit.cover)
                        : const Icon(Icons.image_not_supported, size: 50),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product['price']!,
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
  }
}
