import 'package:flutter/material.dart';
import 'package:finalisimo/basic_bottom_nav_bar.dart';
import 'package:finalisimo/local_storage.dart';
import 'package:finalisimo/calculadora.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.configurePrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: BasicBottomNavBar(),
    );
  }
}

