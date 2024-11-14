import 'package:delivery_app_emilio_puigcerver/componets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inicio"),
      backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      drawer: MyDrawer(),
    );
  }
}