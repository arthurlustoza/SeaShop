import 'package:flutter/material.dart';

class PurchaseHistory extends StatelessWidget {
  const PurchaseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          'Histórico de Compras',
          style: TextStyle(
            fontFamily: 'serif',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: const Icon(Icons.shopping_bag, color: Colors.blue),
              ),
              title: const Text(
                'Pedido #1024 - SeaShop',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Data: 24/08/2026\nStatus: Entregue'),
              trailing: const Text(
                'R\$ 159,90',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              isThreeLine: true,
            ),
          ),
          Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: const Icon(Icons.shopping_bag, color: Colors.blue),
              ),
              title: const Text(
                'Pedido #0987 - SeaShop',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('Data: 15/08/2026\nStatus: Entregue'),
              trailing: const Text(
                'R\$ 89,90',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
