import 'package:delivery_app_emilio_puigcerver/models/cart_item.dart';
import 'package:delivery_app_emilio_puigcerver/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key,required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant> (
      builder: (context, restaurant, child) => Container
      (child: Column(
        children: [
          Row(
            children: [
              //imagen de la comida
            ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Container(
              width: 200,
              height: 125,
              child: Image.asset(
                cartItem.food.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
              //nombre y precio de la comida
              Column(children: [
                //nombre de la comida

                //precio de la comida
              ],
              ),

              //incremento o decremento (cantidad)
            ],
          ),
          //addons
        ],
        ),
      ),
    );
  }
}

