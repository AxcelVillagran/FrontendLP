import 'package:flutter/material.dart';
import 'package:frontend/mainTurista.dart';

class CrearGrupo extends StatefulWidget {
  @override
  
  _CrearGrupo createState() => _CrearGrupo();
}

class _CrearGrupo extends State<CrearGrupo> {

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
          decoration: InputDecoration(
          labelText: "Nombre del grupo",
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
            onPressed: (){ Navigator.pop(context);},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF78203A),
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