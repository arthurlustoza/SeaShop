import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Importação adicionada
import 'firebase_options.dart';

import 'package:flutter_application_1/widgets/sea_shop_app_bar.dart';
import 'package:flutter_application_1/widgets/sea_shop_body.dart';
import 'package:flutter_application_1/widgets/sea_shop_drawer.dart';
// ignore: unused_import
import 'package:flutter_application_1/widgets/cart.dart';

void main() async {
  // 1. Inicializa os bindings do Flutter primeiro
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Aguarda a conexão com o Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // 3. Roda o aplicativo
  runApp(const AppFull());
}

class AppFull extends StatefulWidget {
  const AppFull({super.key});

  @override
  App createState() => App();
}

class App extends State<AppFull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seashop',
      home: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: const SeaShopAppBar(),
        drawer: const SeaShopDrawer(),
        body: SeaShopBody(),
      ),
    );
  }
}
