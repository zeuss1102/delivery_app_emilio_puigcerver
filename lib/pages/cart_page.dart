import 'package:delivery_app_emilio_puigcerver/componets/my_cart_tile.dart';
import 'package:delivery_app_emilio_puigcerver/models/cart_item.dart';
import 'package:delivery_app_emilio_puigcerver/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child){
      //carrito
      final userCart = restaurant.cart;

      // scaffold UI
      return Scaffold(
        appBar: AppBar(
        title:Text("Carrito"),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        //sirve para que al seleccionar al carrito salga el articulo
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: userCart.length,
                itemBuilder: (context, index){
                  //obtener el item individual del carrito
                  final cartItem = userCart[index];

                  //volver al cart tile UI
                  return MyCartTile(cartItem: cartItem);
                },
            ),
            ),
          ],
        ),
      );
    });
  }
}