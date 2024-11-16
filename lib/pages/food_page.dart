import 'package:flutter/material.dart';
import 'package:delivery_app_emilio_puigcerver/models/food.dart';
//en este apartado la funcion que hace es que si le apesgas a la imagen se hace más grande y te dará una pequeña descripción

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({
    super.key,
    required this.food
    });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // imagen comida
          Image.asset(widget.food.imagePath),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              //nombre comida
            Text
            (widget.food.name,
            style:const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          //precio comida
            Text(widget.food.price.toString(),
             style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(height: 10),

            //descripción de comida
            Text(widget.food.description,
             style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary),
            ),

            // complementos (addons)
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.food.availableAddons.length,
              itemBuilder: (context,index) {
                //obtener complementos individuales
              Addon addon = widget.food.availableAddons[index];
              // volver a la caja de lista
              return CheckboxListTile(
                title: Text(addon.name),
                subtitle:Text(addon.price.toString()) ,
                value: false,
                onChanged: (value){}
              );
            },
                    )
                  ],
                ),
          ),

          //button -> añadir al carrito
        ],
      ),
    );
  }
}