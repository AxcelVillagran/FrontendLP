import 'package:flutter/material.dart';
import "main.dart";
import 'package:http/http.dart' as http;
import 'dart:convert';

class CrearGrupo extends StatefulWidget {
  final int rol;
  final Color background;
  
  final VoidCallback? recargarGrupos;

  CrearGrupo({required this.rol, required this.background, this.recargarGrupos});

  CrearGrupo.withoutCallback():rol=1,background=Colors.black, recargarGrupos=null;


  @override
  
  _CrearGrupo createState() => _CrearGrupo();
}

class _CrearGrupo extends State<CrearGrupo> {

  final TextEditingController destinoController = TextEditingController();
  final TextEditingController codigoInvitacionController = TextEditingController();
  
  Future<void> anadirGrupo() async {


    final Map<String, dynamic> requestData = {
      "codigo": codigoInvitacionController.text, 
      "destino": destinoController.text,
      "members": [{"idUser":1},{"idUser":2}], 
      "rol": widget.rol,
    };
      final response = await http.post(
        Uri.parse(apiUrl+"createTouristGroup"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 201) {
        print("Grupo creado correctamente");
        widget.recargarGrupos?.call(); 
        Navigator.pop(context);
      } else {

        print("Error creando grupo");
      }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
        child: Column(
        children: [
        Text("Crear nuevo grupo",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox(height: 12,),),
        TextField(
          controller: destinoController,
          decoration: InputDecoration(
          labelText: "Destino",
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          ),
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(height: 5,),
        TextField(
              //keyboardType: TextInputType.multiline,
              minLines: 3,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Descripcion",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: TextStyle(color: Colors.black),
        ),
        SizedBox(height: 5,),
        TextField(
          controller: codigoInvitacionController,
          decoration: InputDecoration(
          labelText: "Codigo de invitacion",
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          ),
          style: TextStyle(color: Colors.black),
        ),
        Expanded(child: SizedBox(height: 5,),),
        Row(children: [
          Expanded(child: ElevatedButton(
            onPressed: anadirGrupo,
            style: ElevatedButton.styleFrom(
              backgroundColor: (widget.background),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.0),
            ),
            child: Text('Crear',style: TextStyle(color: Colors.white),),
        ))
        
        
        
        ],)
        
                ,
      ])
      ),)

    );
  }
}