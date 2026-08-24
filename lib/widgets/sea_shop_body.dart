import 'package:flutter/material.dart';
import 'sea_shop_product_detail_screen.dart';

class SeaShopBody extends StatelessWidget {
  SeaShopBody({super.key});

  final List<Map<String, String>> products = [
    {
      'title': 'Concha',
      'price': 'R\$ 29,90',
      'image':
          'https://images.unsplash.com/photo-1530216088905-4007f55c6170?q=80&w=764&auto=format&fit=crop',
      'description': 'Uma linda concha natural',
    },
    {
      'title': 'Flores do mar',
      'price': 'R\$ 18,50',
      'image':
          'https://images.unsplash.com/photo-1699618888274-4507a31c5e5c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmxvciUyMGRvJTIwbWFyfGVufDB8fDB8fHww',
      'description': 'Flor tropical oceanica',
    },
    {
      'title': 'Coral',
      'price': 'R\$ 45,00',
      'image':
          'https://images.unsplash.com/photo-1582967788606-a171c1080cb0?q=80&w=800&auto=format&fit=crop',
      'description': 'Um lindo coral',
    },
    {
      'title': 'Estrela do Mar',
      'price': 'R\$ 23,00',
      'image':
          'https://images.unsplash.com/photo-1471357674240-e1a485acb3e1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZXN0cmVsYSUyMGRvJTIwbWFyfGVufDB8fDB8fHww',
      'description': 'Estrela rara encontrada no mar',
    },
    {
      'title': 'Pepino do mar',
      'price': 'R\$ 12,00',
      'image':
          'https://media.istockphoto.com/id/2229721285/pt/foto/tubular-sea-cucumber-underwater-photography.webp?a=1&b=1&s=612x612&w=0&k=20&c=z3CScAxD-2R2UcLEVRRDEw1P8Dqia4_cBaavwqKj590=',
      'description': 'Pepino comestivel',
    },
    {
      'title': 'Perola',
      'price': 'R\$ 1.888,00',
      'image':
          'https://images.unsplash.com/photo-1611444111920-89dfc4a01f43?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVhcmx8ZW58MHx8MHx8fDA%3D',
      'description': 'Perola natural encontrada no mar atlatico',
    },
    {
      'title': 'Coco Raro',
      'price': 'R\$ 1.000,00',
      'image':
          'https://images.unsplash.com/photo-1581453883350-288b2c19bea8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29jb251dHxlbnwwfHwwfHx8MA%3D%3D',
      'description': 'Coco tropical refrescante',
    },
    {
      'title': 'Algas',
      'price': 'R\$ 23,00',
      'image':
          'https://media.istockphoto.com/id/2246346032/pt/foto/closeup-green-laminaria-kelp-seaweed-for-healthy-food-3d-illustration-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=4fc6N4qs4U_YOKd2pugOf8MO_XLuO3KgoZcJX00tOxY=',
      'description': 'Alga que podem ser preparadas para consumo',
    },
    {
      'title': 'Alga Vermelha',
      'price': 'R\$ 12,00',
      'image':
          'https://media.istockphoto.com/id/1483091366/pt/foto/rhodophyta-red-algae-branch-isolated-on-white.webp?a=1&b=1&s=612x612&w=0&k=20&c=g4CeZhTd6m9dZIaphlR4Byp-F60i1z634wIH1crpKj0=',
      'description': 'alga muito rara encontrada',
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

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: product),
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
                // Widget Hero adicionado aqui
                Hero(
                  tag:
                      product['title']!, // A tag deve ser única. O título serve neste caso.
                  child: SizedBox(
                    height: 120,
                    child: Image.network(product['image']!, fit: BoxFit.cover),
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
                          fontFamily: 'serif',
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product['price']!,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'serif',
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
