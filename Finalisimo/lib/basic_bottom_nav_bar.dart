import 'package:finalisimo/principal.dart';
import 'package:flutter/material.dart';
import 'package:finalisimo/calculadora.dart';
import 'package:finalisimo/texfield.dart';
import 'package:finalisimo/coordenadas.dart';
import 'package:finalisimo/mapa.dart';


class BasicBottomNavBar extends StatefulWidget {
  const BasicBottomNavBar({Key? key}) : super(key: key);
  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar>  {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
    //Mandar(),
    Principal(),
    Calculadora(),
    textField(),
    Coordenadas(),
    Map(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
          body:
          Center(
            child: _pages.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculadora',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location_outlined),
            label: 'Coordenadas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      ),
    );
  }
}