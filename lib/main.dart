import 'package:flutter/material.dart';

void main() {
  runApp(AppFull());
}

class AppFull extends StatefulWidget {
  const AppFull({super.key});

  @override
  App createState() => App();
}

class App extends State<AppFull> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      home: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star),
              SizedBox(width: 8),
              Text(
                'SeaShop',
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: 33.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ], // Children
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade200,
        ),
        drawer: Drawer(
          width: 250,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF90CAF9)),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(title: const Text('Your Profile'), onTap: () {}),
              ListTile(title: const Text('Item 2')),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          padding: const EdgeInsets.all(
            16,
          ), // Responsavel para dar margem nas bordas
          childAspectRatio: 0.8, //Aumenta a altura, para evitar estouro de card
          children: List.generate(1, (index) {
            return Card(
              elevation: 2,
              clipBehavior: Clip
                  .antiAlias, // Delimita para evitar a ultrapassar a borda !
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, //Alinha para a esquerda
                children: [
                  Expanded(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1530216088905-4007f55c6170?q=80&w=764&auto=format&fit=crop&idtxlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      width: double.infinity, // Ocupa largura total do card
                      fit: BoxFit.cover, // Preenche bem a area da imagem
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(7.5),
                    child: Text(
                      'Concha',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
