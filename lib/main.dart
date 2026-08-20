import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/sea_shop_app_bar.dart';
import 'package:flutter_application_1/widgets/sea_shop_body.dart';
import 'package:flutter_application_1/widgets/sea_shop_drawer.dart';

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
