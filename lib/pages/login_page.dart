import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});
//esta es la parte de la página principal 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color:Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
          //mensaje, app slogan este texto se encuentra debajo del logo de lock 
          Text(
            "Food delivery App",
            style: TextStyle(
              fontSize: 18,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
            const SizedBox(height: 25,),

          // email textfield
          TextField(),

          //password textfield

          //sing in button
          // not a member? register now  en este apartado se anexaran los nuevos usuarios dentro de la app 
          ],
         ),
      ),
    );
  }
}