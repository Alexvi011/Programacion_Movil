import 'package:proyecto/local_storage.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Principal extends StatefulWidget{


  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal>{
  String? password= LocalStorage.prefs.getString('contraseña');

  @override
  Widget build(BuildContext){
    return Scaffold
      (
      appBar: AppBar(title: const Text('Principal'),),


      //backgroundColor: Colors.deepOrangeAccent,
        body: Center
          (
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              (password == '123456' )?
              Text(

                'Bienvenido: '+
                    (LocalStorage.prefs.getString('usuario') ?? 'usuario') +
                    "\nDe la carrera de: "+
                    (LocalStorage.prefs.getString('contraseña') ?? 'desconocida'),

                style: const TextStyle(
                  fontSize: 50,
                  fontFamily: 'rbold',
                ),
              )
              :Image.network
                (
                'https://live.staticflickr.com/65535/52716929328_7a5759a978_o.png',
                scale: 0.5, height: 400,
              ),

            ],
          ),
        )
    );
  }
}