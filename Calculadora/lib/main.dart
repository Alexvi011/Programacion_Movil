//Librerias para importar

import 'package:flutter/material.dart';
import 'dart:math';


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
      title: 'Pagina Principal',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Random rnd= Random();
  //String _palabra = "Botón Presionado";
  int _counter = 0;
  String _numero="";

  void _limpiar(){
    setState((){
      _numero="";
    });
  }
  void _uno(){
    setState((){
      _numero+="1";
    });
  }
  void _dos(){
    setState((){
      _numero+="2";
    });
  }
  void _tres(){
    setState((){
      _numero+="3";
    });
  }
  void _cuatro(){
    setState((){
      _numero+="4";
    });
  }
  void _cinco(){
    setState((){
      _numero+="5";
    });
  }
  void _seis(){
    setState((){
      _numero+="6";
    });
  }
  void _siete(){
    setState((){
      _numero+="7";
    });
  }
  void _ocho(){
    setState((){
      _numero+="8";
    });
  }
  void _nueve(){
    setState((){
      _numero+="9";
    });
  }
  void _cero(){
    setState((){
      _numero+="0";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_numero',style:TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_uno,
                      tooltip: 'Increment',
                      child: const Text("1"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//1
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_dos,
                      tooltip: 'Increment',
                      child: const Text("2"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//2
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_tres,
                      tooltip: 'Increment',
                      child: const Text("3"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//3
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_uno,
                      tooltip: 'Increment',
                      child: const Text("*"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//Multi
              ],
            ),//Primera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_cuatro,
                      tooltip: 'Increment',
                      child: const Text("4"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//4
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_cinco,
                      tooltip: 'Increment',
                      child: const Text("5"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//5
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_seis,
                      tooltip: 'Increment',
                      child: const Text("6"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//6
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_uno,
                      tooltip: 'Increment',
                      child: const Text("-"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),// Menos

              ],
            ),//Segunda fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_siete,
                      tooltip: 'Increment',
                      child: const Text("7"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//7
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_ocho,
                      tooltip: 'Increment',
                      child: const Text("8"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//8
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_nueve,
                      tooltip: 'Increment',
                      child: const Text("9"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//9
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_uno,
                      tooltip: 'Increment',
                      child: const Text("+"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),// Mas

              ],
            ),//Tercera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_cuatro,
                      tooltip: 'Increment',
                      child: const Text("/"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//Division
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_cero,
                      tooltip: 'Increment',
                      child: const Text("0"),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//0
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_seis,
                      tooltip: 'Increment',
                      child: const Text("."),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),//Punto
                Column(
                  children:<FloatingActionButton> [
                    FloatingActionButton(
                      onPressed:_uno,
                      tooltip: 'Increment',
                      child: const Text("="),backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                    ),
                  ],
                ),// Igual

              ],
            ),//Cuarta fila
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _limpiar,
        tooltip: 'Increment',
        child: const Text("CE"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



