import 'package:calculadora/basic_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
//import 'package:calculadora/Mandar.dart';


var texto1="Alex";
var texto2="ICO";
//var text1="";

class textField extends StatefulWidget {
  const textField({Key? key}) : super(key: key);
  @override
  _textFieldState createState() => _textFieldState();
}

class _textFieldState extends State<textField>{

  final _formKey = GlobalKey<FormState>();
  late FocusNode myFocusNode;
  //String texto1 = "";
  //String texto2 = "";

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Limpia el nodo focus cuando se haga dispose al formulario
    myFocusNode.dispose();
    super.dispose();
  }

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // El primer campo de texto se enfocará tan pronto como se inicie la aplicación
            TextField(
              decoration: InputDecoration(
                  labelText: 'Ingresa tu usuario'
              ),
              autofocus: true,
            ),
            // El segundo campo de texto se enfocará cuando un usuario pulse el
            // FloatingActionButton
            TextField(
              decoration: InputDecoration(
                  labelText: 'Ingresa tu carrera'
              ),
              focusNode: myFocusNode,
            ),
          ],
        ),

      ),

      floatingActionButton: FloatingActionButton(
        // Cuando el botón es pulsado, pide a Flutter que haga focus sobre nuestro
        // campo de texto usando myFocusNode.
        onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
        tooltip: 'Focus Second Text Field',
        child: Icon(Icons.edit),
      ), // Esta coma final hace que el auto-formatting sea más agradable para los métodos build.
    );

  }
*/

  @override
  Widget build(BuildContext context) {
    // Crea un widget Form usando el _formKey que creamos anteriormente
    return Form(

      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          /// CAMPO DE TEXTO 1
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese el usuario';
              }else{
                texto1 = value;
                //text1=texto1;
              }
            },
            decoration: InputDecoration(
                labelText: 'Ingresa tu usuario'
            ),

          ),

          /// CAMPO DE TEXTO 2
          TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Ingrese al area que pertenece';
              }else{
                texto2 = value;

              }
            },
            decoration: InputDecoration(

                labelText: 'Ingresa tu carrera'
            ),
          ),

          /// MENSAJE DE ENVIO Y BOTON DE ENVIAR
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 25),
            child: RaisedButton(
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {

                // devolverá true si el formulario es válido, o falso si
                // el formulario no es válido.
                if (_formKey.currentState!.validate()) {
                  // Si el formulario es válido, queremos mostrar un Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Usuario:'+texto1+'\nCarrera: '+texto2)));

                }
              },
              child: Text('Enviar'),
            ),
          ),

        ],
      ),
    );
  }
}


class Mandar extends StatefulWidget{

  //String texto1;
  //String texto2;
  //String text1="";

  //Mandar(this.texto1,this.texto2);

  @override
  _MandarState createState() => _MandarState();
}

class _MandarState extends State<Mandar>{
  //String text1=texto1;

  @override
  Widget build(BuildContext){
    return Scaffold(

      body: ListView(
        children:[
          Container(
              padding: EdgeInsets.all(20),
              child:Text(

                'Bienvenido '+ texto1 + " De la carreda de: "+ texto2,

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


