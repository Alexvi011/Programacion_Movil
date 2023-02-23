//Librerias para importar

import 'package:calculadora/basic_bottom_nav_bar.dart';
import 'package:flutter/material.dart';



//Inicia la aplicacion no recibe nada y no tiene atributos
void main() {
  //Corre la aplicacion, construye la clase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primera Asignación',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //home: const MyHomePage(title: 'Calculadora'),
      home:BasicBottomNavBar(),
    );
  }
}



