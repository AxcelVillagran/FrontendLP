import 'package:flutter/material.dart';
import "main.dart";
import "crearGrupo.dart";
import 'package:frontend/chatScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'joinGroup.dart';

class pantallaGrupos extends StatefulWidget {
  @override
  _pantallaGrupos createState() => _pantallaGrupos();
}


class _pantallaGrupos extends State<pantallaGrupos> {
  
  final String apiUrl = "http://192.168.0.17:5000/getTouristGroups";
  List<dynamic> items = [];

  void recargarGrupos() {
    obtenerGrupos(); 
  }

  @override
  void initState() {
    super.initState();
    obtenerGrupos();
  }

  Future obtenerGrupos() async {
    final Uri uri = Uri.parse(apiUrl+"getTouristGroups"); 
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      setState(() {
        items = json.decode(response.body);
        print("Items: $items");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    void navigateToCrearGrupo() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CrearGrupo(rol: 1, background: touristColor, recargarGrupos: recargarGrupos)),
      );
  }


    void navigateToJoinGroup(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => JoinGroup(rol: 1, background: touristColor, recargarGrupos: recargarGrupos)),
      );
    }
  void navigateToChatScreen(destino) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatScreen(destino: destino, rol:1, background: touristColor,)),
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
                    onPressed: navigateToJoinGroup,
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
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                onTap: () => navigateToChatScreen(items[index]['destino']),
                child: Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3), 
                          ),
                        ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                'lib/images/${items[index]['destino']}.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 16.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),
                                
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  items[index]['destino'],
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
                ),);
                  },
                ),
              ),

            ],
          ),
        ),
        
        
      ]
    );
  }
}