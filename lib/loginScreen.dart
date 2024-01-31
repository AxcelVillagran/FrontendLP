import 'package:flutter/material.dart';
import 'package:frontend/operadorLogin.dart';
import 'package:frontend/turistaLogin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    void loginTurista() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TuristaLogin()),
    );
    }
    void loginOperador() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OperadorLogin()),
    );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex & Travel'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Elige tu rol", 
              textAlign: TextAlign.left
              ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                // Handle the tap gesture
                loginTurista();
              },
          
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0), 
              child: Image.asset(
                'lib/images/turistas.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover, 
              ),
            ),),
            Positioned(
              bottom: 20, 
              left: 20, 
              child: Text(
                'Turista',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                // Handle the tap gesture
                loginOperador();
              },
          
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0), 
              child: Image.asset(
                'lib/images/operadores.jpg',
                width: 300, 
                height: 200, 
                fit: BoxFit.cover, 
              ),
            )),
            Positioned(
              bottom: 20, 
              left: 20, 
              child: Text(
                'Operador',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
                  
        ),
      ),
    );


  }
}