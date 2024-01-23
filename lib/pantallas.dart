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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text("Mapa", style: TextStyle(color: Colors.white)),
      ),
      body: Stack(
        children: [
          Image.asset(
            'lib/images/mapa.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: color),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.filter_list),
                        SizedBox(width: 8.0),
                        Text('Filtro'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Actividades Cercanas'),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: color,
                      onPrimary: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ],
      ),
    );
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