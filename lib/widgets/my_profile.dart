import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seu Perfil',
          style: TextStyle(
            fontFamily: 'serif',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade200,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue.shade200, width: 4),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=80&w=200',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sabrina Almeida',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Cliente Bronze',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.blue),
                      title: Text('Nome Completo'),
                      subtitle: Text('Sabrina Almeida'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.wc, color: Colors.blue),
                      title: Text('Sexo'),
                      subtitle: Text('Feminino'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.blue),
                      title: Text('Telefone'),
                      subtitle: Text('(11) 99999-9999'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.badge, color: Colors.blue),
                      title: Text('CPF'),
                      subtitle: Text('123.456.789-00'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.map, color: Colors.blue),
                      title: Text('CEP'),
                      subtitle: Text('01000-000'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
