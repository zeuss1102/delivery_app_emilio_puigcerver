import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, 
    builder: (context)=> AlertDialog(
      title: const Text("Tu ubicación"),
      content:const TextField(
        decoration: InputDecoration(hintText: "Buscar dirección..."),// crea una ventana foltante donde se puede checar la ubicación
      ),
      actions: [
        //botón de cancelación
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancelar"),
          ),

        //botón de guardado
        MaterialButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Guardar"),
          ),
      ],
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pedir ahora", style: TextStyle
          (color: Theme.of(context).colorScheme.primary
      
          ),
          ),
          GestureDetector(
            onTap:() => openLocationSearchBox(context),
            child: Row(
            children: [
               //en este apartado del código se verá  la parte de la dirección del ususario
              Text("97000 Mérida Yucatán Centro" ,style: TextStyle
              (color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
              ),
              ),
                  
               //despliegue del menú
              const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}