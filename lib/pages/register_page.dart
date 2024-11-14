import 'package:delivery_app_emilio_puigcerver/componets/my_button.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   //control de edicion de texto
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
          // texto donde se ve la creacion de una nueva cuenta 
          Text(
            "Generar una cuenta para ti <3",
            style: TextStyle(
              fontSize: 18,
              color:Theme.of(context).colorScheme.inversePrimary,
            ),
            ),
            const SizedBox(height: 25,),

          // email textfield
          MyTextfield(
            controller: emailController,
            hintText: "Email",
            obscureText: false,

          ),
          const SizedBox(height: 10),

          //password textfield
          MyTextfield(
            controller: passwordController,
            hintText: "contraseña",
            obscureText: true,
            ),
              const SizedBox(height: 10),

          //confirmar de nuevo la contraseña password textfield
          MyTextfield(
            controller: confirmPasswordController,
            hintText: "confirmar contraseña",
            obscureText: true,
            ),

          const SizedBox(height: 10),

          //sing up button es para registrarte como nuevo usuario
          MyButton(
            text: "Unirte",
            onTap: (){},
            ),
            const SizedBox(height: 25),
          // aparatado de donde si ya tienes una cuenta poder ingresar a la pagina principal
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "¿Tienes una cuenta?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
                ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Ingresa ahora!",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ],
          )
          ],
        ),
      ),
    );
  }
}
