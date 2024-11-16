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
          Text(  '\$${widget.food.price}',
              style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(height: 10),

            //descripción de comida
            Text(widget.food.description),

            const SizedBox(height: 10),
            Divider(color: Theme.of(context).colorScheme.secondary),
            const SizedBox(height: 10),


            // complementos (addons)
            Text(
              "Añadir complementos",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(9),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: widget.food.availableAddons.length,
                itemBuilder: (context,index) {
                  //obtener complementos individuales
                Addon addon = widget.food.availableAddons[index];
                // volver a la caja de lista UI
                return CheckboxListTile(
                  title: Text(addon.name),
                  subtitle:Text(  '\$${addon.price}',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary,
                ),
              ) ,
                  value: false, // este valor sirve para seleccionar los complementos 
                  onChanged: (value){}
                );
              },
                      ),
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