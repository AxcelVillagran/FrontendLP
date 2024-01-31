import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JoinGroup extends StatefulWidget{
  final int rol;
  final Color background;
  
  final VoidCallback? recargarGrupos;

  JoinGroup({required this.rol, required this.background, this.recargarGrupos});

  JoinGroup.withoutCallback():rol=1,background=Colors.black, recargarGrupos=null;


  @override
  
  _JoinGroup createState() => _JoinGroup();
}

class _JoinGroup extends State<JoinGroup>{
    final TextEditingController codigoInvitacionController = TextEditingController();
    var codigo_grupo;
    List grupos = [];

    @override
    void initState() {
      super.initState();
      getData();
    }


    Future<void> getData() async {
    final url = "http://192.168.3.4:5000/getTouristGroups";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        for (var group in data) {
          
          grupos.add(group["codigo"]);
        }
      } else {
        print("Failed to load data. Status Code: ${response.statusCode}");
      }
    } catch (error) {
      
      print("Error: $error");
    }
  }

  Future<void> unirseGrupo() async {

    if(grupos.contains(codigoInvitacionController.text)){
      codigo_grupo = codigoInvitacionController.text;
    }

    final String apiUrl = "http://192.168.3.4:5000/";

    final Map<String, dynamic> requestData = {
      "codigo": codigo_grupo, 
      "userId": 3,
    };

      final response = await http.post(
        Uri.parse(apiUrl+"joinGroup"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestData),
      );

      print(response.statusCode);
      if (response.statusCode == 200) {
        print("Te has unido al grupo");
        widget.recargarGrupos?.call(); 
        Navigator.pop(context);
      } else {
        print(codigo_grupo);
        print("Error uniendose al grupo");
        
      }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verificación"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Ingrese el código de verificación",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),

            Container(
                  width: 120.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),alignment: Alignment.center,
                  child: TextFormField(
                    controller:codigoInvitacionController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: "", 
                      border: InputBorder.none,
                    ),
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
            
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: unirseGrupo,
              style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF78203A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
              ),
              child: Text('Verificar',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}