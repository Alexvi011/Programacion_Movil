import 'package:flutter/material.dart';

//NO LE HAGAS CASO A ESTE ARCHIVO PARA NADA, IGNORALO NO ESTA IMPORTADO EN NINNGUN OTRO


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
    String text1=widget.texto1;
    String text2=widget.texto2;
    return Scaffold(

      body: ListView(
        children:[
          Container(
            padding: EdgeInsets.all(20),
            child:Text(

              'Bienvenido '+ text1 + "De "+ text2,
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

