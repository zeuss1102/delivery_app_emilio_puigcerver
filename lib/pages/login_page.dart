import 'package:delivery_app_emilio_puigcerver/componets/my_button.dart';
import 'package:delivery_app_emilio_puigcerver/componets/my_textfield.dart';
import 'package:delivery_app_emilio_puigcerver/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //control de edicion de texto
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // metodo para ingresar
  void login() async {
    // Obtener una instancia del servicio de autenticación
    final _authService = AuthService();

    // Intentar ingresar
    try {
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
      Navigator.pushReplacementNamed(context, '/home'); // Navegar a la página principal si el inicio de sesión es exitoso
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) =>  AlertDialog(
          title: Text('Error'),
          content: Text(e.toString()),
        ),
      );
    }
  }

  //esta es la parte de la página principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            //mensaje, app slogan este texto se encuentra debajo del logo de lock 
            Text(
              "Food delivery App",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
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
            //sing in button este boton siver para ingresar a la página principal
            MyButton(
              text: "Ingresar",
              onTap: login,
            ),
            const SizedBox(height: 25),
            // not a member? register now  en este apartado se anexarán los nuevos usuarios dentro de la app
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¿Aun no eres miembro?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage(onTap: widget.onTap)),
                    );
                  },
                  child: Text(
                    "¡Regístrate ahora!",
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
