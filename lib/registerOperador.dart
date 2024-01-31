import 'package:flutter/material.dart';
import 'package:frontend/mainOperador.dart';
import 'package:frontend/operadorLogin.dart';
import 'package:http/http.dart' as http;
import "main.dart";
import 'dart:convert';

class RegisterScreen extends StatefulWidget{
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  List<dynamic> items = [];
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoPaternoController = TextEditingController();
  final TextEditingController apellidoMaternoController = TextEditingController();
  final TextEditingController rucController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();

  Future addOperador() async{
    final Uri uri = Uri.parse(apiUrl+"register");

    final Map<String,dynamic> request = {
      "user": nombreController.text + apellidoPaternoController.text + apellidoMaternoController.text,
      "rol": 2,
      "groups": [],
    };

    final response = await http.post(uri,headers: {'Content-Type': 'application/json'},body: jsonEncode(request));
    if (response.statusCode == 200) {
      print('Usuario registrado exitosamente');
      Navigator.push(
        context,MaterialPageRoute(builder: (context) => MainOperador()),
      );
    } else {
      print('Error al registrar usuario: ${response.statusCode}');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/bgRegister.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Ingrese los siguientes datos',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 16.0),
                  buildTextInput('Nombre', nombreController),
                  buildTextInput('Apellido Paterno', apellidoPaternoController),
                  buildTextInput('Apellido Materno', apellidoMaternoController),
                  buildTextInput('RUC', rucController),
                  buildTextInput('+593', telefonoController, suffixText: 'Verificar', suffixColor: Colors.blue),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      //Transaccionar registro
                      addOperador();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: operatorColor, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), 
                      ),
                    ),
                    child: Text('Registrar'),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('¿Ya cuentas con una cuenta?'),
                      TextButton(
                        onPressed: () {
                          //Redirigir a iniciar sesion
                          navigateToOperadorLogin(context);
                        },
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextInput(String labelText, TextEditingController controller, {String suffixText="", Color suffixColor=Colors.black}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        suffixText: suffixText,
        suffixStyle: TextStyle(color: suffixColor),
      ),
    );
  }
  void navigateToOperadorLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OperadorLogin()),
    );
    }
  }
