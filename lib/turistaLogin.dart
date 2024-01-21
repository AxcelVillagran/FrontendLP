
import 'package:flutter/material.dart';
import 'package:frontend/mainTurista.dart';

class TuristaLogin extends StatefulWidget {
  @override
  _TuristaLoginState createState() => _TuristaLoginState();
}

class _TuristaLoginState extends State<TuristaLogin> {

  void navigateToMainTurista() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainTurista()),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Flex & Travel",style: TextStyle(color: Colors.white, fontSize: 24.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 100),
                TextField(
                  decoration: InputDecoration(labelText: 'Usuario',),style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Contrasena'),style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Aun no tienes una cuenta? "),
                    Text("Registrate",style: TextStyle(
              decoration: TextDecoration.underline,)),
              
                    ],
                ),ElevatedButton(
          onPressed: navigateToMainTurista,
          child: Text('Iniciar sesión'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 149, 44, 81),
            foregroundColor: Colors.white ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), 
            ),
          ),
        ),
                
              ],
      ),
    ),
    );
  }
}


