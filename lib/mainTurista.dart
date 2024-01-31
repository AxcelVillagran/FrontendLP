import 'package:flutter/material.dart';
import 'package:frontend/main.dart';
import 'package:frontend/grupoTurista.dart';
import "pantallas.dart";
import 'package:http/http.dart' as http;
import 'dart:convert';
class MainTurista extends StatefulWidget {
  @override
  _MainTurista createState() => _MainTurista();
}

class _MainTurista extends State<MainTurista> {
  int indicePantalla = 0;
  @override
    Widget build(BuildContext context) {
      List<Widget> pantallas = [
      pantallaInicio(color: touristColor),
      pantallaMapa(color: touristColor),
      pantallaGrupos(),
      pantallaAjustes(color: touristColor),
    ];
    return Scaffold(
      body: pantallas[indicePantalla],
        bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: (touristColor)),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: (touristColor)),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: (touristColor)),
            label: 'Grupos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: (touristColor)),
            label: 'Ajustes',
          ),
        ],
        currentIndex: indicePantalla,
        selectedItemColor: (touristColor),
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.white,
        onTap: touchItem,
      ),
    );

  }
  void touchItem(int index) {
    setState(() {
      indicePantalla = index;
    });
  }
}

