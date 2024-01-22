import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
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
                  buildTextInput('Nombre'),
                  buildTextInput('Apellido Paterno'),
                  buildTextInput('Apellido Materno'),
                  buildTextInput('+593', suffixText: 'Verificar', suffixColor: Colors.blue),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      //Transaccionar registro
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF78203A), 
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

  Widget buildTextInput(String labelText, {String suffixText="", Color suffixColor=Colors.black}) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        suffixText: suffixText,
        suffixStyle: TextStyle(color: suffixColor),
      ),
    );
  }
}