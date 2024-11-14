import 'package:delivery_app_emilio_puigcerver/componets/my_drawer.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_sliver_app_bar.dart';
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
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, InnerBoxIsScrolled) => [
          MySliverAppBar(
            child: Text('hola'),
            title: Text('titulo'),)
        ],
        body: Container(color: Colors.blue),
        ),
    );
  }
}