import 'package:delivery_app_emilio_puigcerver/componets/my_current_location.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_description_box.dart';
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
            title: Text('titulo'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: [

                Divider(indent: 25,
                endIndent: 25,
                color: Theme.of(context).colorScheme.secondary,
                ),
               // servira para la ubicación actual
              const MyCurrentLocation(),

               // apartado de descripción de producto
              const MyDescriptionBox(),
              ],
            ),)
        ],
        body: Container(color: Colors.blue),
        ),
    );
  }
}