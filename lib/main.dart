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
  var nome = 'Arthur';
  int contador = 0;
  void click() {
    setState(() {
      nome = 'Arthur $contador';
      contador++;
    });
  }

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
        body: Center(
          child: Column(
            children: [
              Text('Ola $nome'),
              ElevatedButton(onPressed: click, child: Text('Click')),
            ],
          ),
        ),
      ),
    );
  }
}
