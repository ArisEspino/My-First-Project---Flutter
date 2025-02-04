import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/pages/HomePage.dart';

// Inicia la aplicación llamando al widget raíz, en este caso, MyApp.
void main() {
  runApp(const MyApp());
}

//Definiendo la My_app es un widget sin estado
class MyApp extends StatelessWidget {
  //Usa una clave opcional para optimizar el rendimiento del flutter
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // Es un método que define la estructura visual del widget.
  Widget build(BuildContext context) {
    //MaterialApp Es el widget principal de la app que gestiona la navegación y el tema.
    return MaterialApp(
        debugShowCheckedModeBanner: false, //ocultar etiqueta
        theme: ThemeData.dark(),
        title: 'Flutter Demo',
        home: HomePage());
  }
}

/*
En Flutter, los widgets son la base de todo. 
Cada elemento visible en una aplicación de Flutter
es un widget, desde un botón hasta una pantalla completa.
 */
