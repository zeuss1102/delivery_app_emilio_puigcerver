import 'package:delivery_app_emilio_puigcerver/componets/my_current_location.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_description_box.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_drawer.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_sliver_app_bar.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // Controlador  de pestañas
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // este sirve para dividir y salgan los tab bar en este caso son 3 tres iconos home / settings // person 

  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController ),
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
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5, //sirve para contabilizar cuantas veces se va a mostrar un elemento
              itemBuilder: (context, index) => Text("tab1")
              ),
               ListView.builder(
              itemCount: 5, //sirve para contabilizar cuantas veces se va a mostrar un elemento
              itemBuilder: (context, index) => Text("tab2")
              ),
               ListView.builder(
              itemCount: 5, //sirve para contabilizar cuantas veces se va a mostrar un elemento
              itemBuilder: (context, index) => Text("tab3")
              ),
          
          ],
          ),
        ),
    );
  }
}