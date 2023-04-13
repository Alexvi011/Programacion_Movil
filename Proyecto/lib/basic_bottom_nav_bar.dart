import 'package:flutter/material.dart';


import 'package:proyecto/calculadora.dart';
import 'package:proyecto/texfield.dart';
import 'package:proyecto/principal.dart';
import 'package:proyecto/mapa.dart';

class BasicBottomNavBar extends StatefulWidget {
  //const BasicBottomNavBar({Key? key}) : super(key: key);
  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar>  {
  int _selectedIndex = 0;
  //PageController _pageController = PageController;
   final List<Widget> _pages = <Widget>[
    Principal(),
    Calculadora(),
    textField(),
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
      child: Scaffold(

      body:
      Center(
        child: _pages.elementAt(_selectedIndex),
      ),

      /*IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),*/
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
            icon: Icon(Icons.title),
            label: 'Texto',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.my_location_outlined),
            label: 'Mapa',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      ),
    );
  }
}

