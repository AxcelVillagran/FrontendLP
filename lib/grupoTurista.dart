import 'package:flutter/material.dart';
import "main.dart";
import "crearGrupo.dart";

class pantallaGrupos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void navigateToCrearGrupo() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CrearGrupo()),
      );
  }
    return Column(
      children: [
        
        Stack(

          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2, 
              child: Image.asset(
                'lib/images/grupoTurista.jpg', 
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              ),
            ),
        Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                child: Text(
                  'Grupos de Viaje',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0, 
                  ),
                ),
              ),
            ),
        
        ],
        ),
        Expanded(
          child: Column(
            children: [
              Row(
              children: [
                Expanded(

                child: ElevatedButton(
                    onPressed: navigateToCrearGrupo,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF78203A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    child: Text('Crear',style: TextStyle(color: Colors.white),),
                  )
                ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF78203A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                    ),
                    child: Text('Unirse',style: TextStyle(color: Colors.white),),
                  ),
              
              )],

            )
            
            
            ],
          ),
        ),
        
        
      ]
    );
  }
}