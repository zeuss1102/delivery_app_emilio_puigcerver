import 'package:delivery_app_emilio_puigcerver/services/auth/login_or_register.dart';
import 'package:delivery_app_emilio_puigcerver/firebase_options.dart';
import 'package:delivery_app_emilio_puigcerver/models/restaurant.dart';
import 'package:delivery_app_emilio_puigcerver/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(
    //tema de provider
    MultiProvider(providers:[
      //tema provider
      ChangeNotifierProvider(create: (context)=> ThemeProvider(),),
      //restaurante provider
      ChangeNotifierProvider(create: (context)=> Restaurant(),), //manda la infomacion para que se muestre en la pagina (separa los apartados)
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}



