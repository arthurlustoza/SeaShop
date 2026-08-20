import 'package:flutter/material.dart';

class SeaShopBody extends StatelessWidget {
  SeaShopBody({super.key});

  final List<Map<String, String>> products = [
    {
      'title': 'Concha',
      'price': 'R\$ 29,90',
      'image':
          'https://images.unsplash.com/photo-1530216088905-4007f55c6170?q=80&w=764&auto=format&fit=crop',
    },
    {
      'title': 'Flores do mar',
      'price': 'R\$ 18,50',
      'image':
          'https://i.pinimg.com/236x/94/15/1f/94151fc705623c925616e830940f021d.jpg',
    },
    {
      'title': 'Coral',
      'price': 'R\$ 45,00',
      'image':
          'https://images.unsplash.com/photo-1582967788606-a171c1080cb0?q=80&w=800&auto=format&fit=crop',
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

        return Card(
          elevation: 2,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 120,
                child: Image.network(product['image']!, fit: BoxFit.cover),
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
        );
      },
    );
  }
}
