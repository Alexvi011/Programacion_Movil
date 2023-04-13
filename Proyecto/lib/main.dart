//Librerias para importar

import 'package:proyecto/basic_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/local_storage.dart';

//Inicia la aplicacion no recibe nada y no tiene atributos
void main() async{
  await LocalStorage.configurePrefs();
  //Corre la aplicacion, construye la clase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segunda Asignación',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:BasicBottomNavBar(),
    );
  }
}



