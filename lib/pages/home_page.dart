import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Catalog App"),
      ),
      body: const Center(
        child: Text("welcome to pokhara"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
