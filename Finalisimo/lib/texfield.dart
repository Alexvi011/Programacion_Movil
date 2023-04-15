
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:finalisimo/local_storage.dart';
var texto1="";
var texto2="";


class textField extends StatefulWidget {
  const textField({Key? key}) : super(key: key);

  @override
  State<textField> createState() => _textFieldState();
}

class _textFieldState extends State<textField>{
  // Widget Form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body:PageView(
        children:[
        Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Usuario',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(75)),
                  ),
                  hintText: 'Ingresa tu usuario',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obligatorio';
                  } else {
                    LocalStorage.prefs.setString('usuario', value);
                  }
                },
              ),
              padding: const EdgeInsets.fromLTRB(60, 50, 60, 30),
              width: 600,
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  hintText: 'Ingresa tu contraseña',
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obligatorio';
                  } else {
                    LocalStorage.prefs.setString('contraseña', value);
                  }
                },
              ),
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 30),
              width: 600,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  String? username= LocalStorage.prefs.getString('usuario');
                  String? password= LocalStorage.prefs.getString('contraseña');
                  if (username == 'Alexvi11' && password == '123456') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Inicio correcto')));

                    // Las credenciales son válidas, realizar acción
                  } else {
                    // Las credenciales son inválidas, mostrar mensaje de error
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Nombre de usuario o contraseña incorrectos')));
                  }
                }
              },
              child: const Text('Enviar'),
            ),
            Container(
              child: Image.network
                (
                'https://media.giphy.com/media/PCvkgunX9ZbEEyfTQH/giphy-downsized-large.gif',
                scale: 0.5, height: 250,
              ),
            ),
          ],
        ),
      ),
        ]
      )
    );
  }
}




