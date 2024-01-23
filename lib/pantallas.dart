import 'package:flutter/material.dart';

class pantallaInicio extends StatelessWidget {
  final Color color;
  pantallaInicio ({required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppBar(
        backgroundColor: color,
        title: Text("Inicio", style: TextStyle(color: Colors.white)),
      ),
      Container (
        
      )
    ]);
  }
}

class pantallaMapa extends StatelessWidget {
  final Color color;
  pantallaMapa ({required this.color});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppBar(
        backgroundColor: color,
        title: Text("Mapa", style: TextStyle(color: Colors.white)),
      ),
      Container(
          height:600,
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Image.asset(
                'lib/images/mapa.jpg', 
              fit: BoxFit.cover,
          ),
        ),
        Container(
          
        ),
    ]);
  }
}

class pantallaAjustes extends StatelessWidget {
  final Color color;
  pantallaAjustes ({required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: color,
          title: Text("Ajustes", style: TextStyle(color: Colors.white)),
        ),
      ]
    );
  }
}