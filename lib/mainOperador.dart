import 'package:flutter/material.dart';
import 'package:frontend/main.dart';
import "pantallas.dart";
import "grupoOperador.dart";

class MainOperador extends StatefulWidget {
  @override
  _MainOperador createState() => _MainOperador();
}

class _MainOperador extends State<MainOperador> {
int indicePantalla = 0;
List<Widget> pantallas = [
    pantallaInicio(color: operatorColor),
    pantallaMapa(color: operatorColor),
    pantallaGrupos(),
    pantallaAjustes(color: operatorColor),
  ];
@override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pantallas[indicePantalla],
        bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: (operatorColor)),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: (operatorColor)),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: (operatorColor)),
            label: 'Grupos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: (operatorColor)),
            label: 'Ajustes',
          ),
        ],
        currentIndex: indicePantalla,
        selectedItemColor: (operatorColor),
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