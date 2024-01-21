import 'package:flutter/material.dart';
import 'package:frontend/mainOperador.dart';

class OperadorLogin extends StatefulWidget {
  @override
  _OperadorLoginState createState() => _OperadorLoginState();
}

class _OperadorLoginState extends State<OperadorLogin> {


  void navigateToMainOperador() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainOperador()),
    );
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
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
                Text("Flex & Travel",style: TextStyle(color: Colors.white, fontSize: 24.0),),
                SizedBox(height: 150),
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
                    Text("Aun no tienes una cuenta?"),
                    Text("Registrate",style: TextStyle(
              decoration: TextDecoration.underline,))
                    ],
                ), ElevatedButton(onPressed: navigateToMainOperador, 
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