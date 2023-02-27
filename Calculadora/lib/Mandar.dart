import 'package:flutter/material.dart';




class Mandar extends StatefulWidget{

  String texto1;
  String texto2;
  Mandar(this.texto1,this.texto2);

  @override
  _MandarState createState() => _MandarState();
}

class _MandarState extends State<Mandar>{
  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenida'),
      ),
      body: ListView(
        children:[
          Container(
            padding: EdgeInsets.all(20),
            child:Text(
              'Bienvenido '+ widget.texto1 + " "+ widget.texto2,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'rbold'
            ),)
          )
        ],
      ),
    );
  }
}