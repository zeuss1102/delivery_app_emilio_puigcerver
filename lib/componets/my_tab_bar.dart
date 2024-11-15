import 'package:flutter/material.dart';
//este es el apartado de pestañas

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          //1er tab
          Tab (
            icon: Icon(Icons.home),
          ),
           //2do tab
          Tab (
            icon: Icon(Icons.settings),
          ),
            //3er tab
          Tab (
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
