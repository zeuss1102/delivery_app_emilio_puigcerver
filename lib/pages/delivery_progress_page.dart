import 'package:delivery_app_emilio_puigcerver/componets/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:const Text("Entrega en curso..."),
      backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottonNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
      );
  }

  // nav bar botton - massage / llamar al repartidor
  Widget _buildBottonNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
      ),
      ),
      padding:const EdgeInsets.all(25),
      child: Row(children: [
        //perfil del repartidor
        Container(decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: (){},
        icon:const Icon(Icons.person),
        ),
        ),

        const SizedBox(width: 10),
        // información del repartidor
        Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Omar millan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),
            Text(
              "Conductor",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
          // botón de  mensaje
           Container(decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: (){},
        icon:const Icon(Icons.message),
        color: Theme.of(context).colorScheme.primary,
        ),
        ),
        const SizedBox(width: 10),

          // botón para llamar
           Container(decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: (){},
        icon:const Icon(Icons.call),
        color: Colors.blue,
        ),
        ),
        ],
        )

        
      ],
      ),
    );
  }
}