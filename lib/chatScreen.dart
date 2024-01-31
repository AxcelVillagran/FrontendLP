import 'package:flutter/material.dart';
import 'package:frontend/grupoOperador.dart';
import "crearGrupo.dart";
class ChatScreen extends StatelessWidget {
  
  
  final String destino;
  ChatScreen({required this.destino});
  @override
  Widget build(BuildContext context) {
    
    //prueba
    void navigateToVotaciones() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CrearGrupo()),
      );
    }
    //prueba
    void navigateToItinerario() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CrearGrupo()),
      );
    }
    return Scaffold(
    body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                'lib/images/${destino}.jpeg', 
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              ),
              color: Colors.blue, 
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                child: Text(
                  destino,
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
                      onPressed: navigateToVotaciones,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF78203A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                      ),
                      child: Text('Votaciones', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: navigateToItinerario,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF78203A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                      ),
                      child: Text('Itinerario', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),

              Form(
                child: Column(
                  children: [
                    RadioListTile<String>(
                      title: Text('Isla Santa Cruz'),
                      value: 'Isla Santa Cruz',
                      groupValue: 'selectedIsland',
                      onChanged: (value) {
                        // procesar info
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('Isla Isabel'),
                      value: 'Isla Isabel',
                      groupValue: 'selectedIsland',
                      onChanged: (value) {
                        //procesar info
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('Isla San Cristobal'),
                      value: 'Isla San Cristobal',
                      groupValue: 'selectedIsland',
                      onChanged: (value) {
                        // procesar infor
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}