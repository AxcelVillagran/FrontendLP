import 'package:flutter/material.dart';
import "main.dart";
import "crearGrupo.dart";
import 'package:frontend/chatScreen.dart';

class pantallaGrupos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void navigateToCrearGrupo() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CrearGrupo()),
      );
  }

  void navigateToChatScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatScreen()),
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
            ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: navigateToChatScreen,
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                'lib/images/groupSample.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 16.0,
                              child: Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Galapagos',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ultima conversacion', textAlign: TextAlign.left),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Justo ahora'),
                                Text('14/10/23'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        
        
      ]
    );
  }
}