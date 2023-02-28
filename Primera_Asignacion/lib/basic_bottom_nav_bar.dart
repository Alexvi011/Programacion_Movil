import 'package:flutter/material.dart';
import 'package:calculadora/calculadora.dart';
import 'package:calculadora/texfield.dart';
//import 'package:calculadora/Mandar.dart';


class BasicBottomNavBar extends StatefulWidget {
  const BasicBottomNavBar({Key? key}) : super(key: key);


  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar>  {
  int _selectedIndex = 0;

   List<Widget> _pages = <Widget>[
    Mandar(),
    Calculadora(),
    textField(),
    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
  ];

 //static String get texto2 => "";
  //static String get texto1 => "";


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Asignación'),
      ),
      body:
      Center(
        child: _pages.elementAt(_selectedIndex),
      ),

      /*IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),*/
      bottomNavigationBar: BottomNavigationBar(
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
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chats',
          // ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

