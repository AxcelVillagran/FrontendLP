import 'package:flutter/material.dart';

class OperadorLogin extends StatefulWidget {
  @override
  _OperadorLoginState createState() => _OperadorLoginState();
}

class _OperadorLoginState extends State<OperadorLogin> {

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
                )
                
              ],
      ),
    ),
    );
  }
}