import 'package:flutter/material.dart';
import 'package:frontend/grupoOperador.dart';
import 'package:frontend/main.dart';

class MainOperador extends StatefulWidget {
  @override
  _MainOperador createState() => _MainOperador();
}

class _MainOperador extends State<MainOperador> {
int indicePantalla = 0;
List<Widget> pantallas = [
    pantallaInicio(),
    pantallaMapa(),
    pantallaGrupos(),
    pantallaAjustes(),
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
class pantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppBar(
        backgroundColor: operatorColor,
        title: Text("Inicio", style: TextStyle(color: Colors.white)),
      ),
      Container ()
    ]);
  }
}

class pantallaMapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppBar(
        backgroundColor: operatorColor,
        title: Text("Mapa", style: TextStyle(color: Colors.white)),
      ),
      Container ()
    ]);
  }
}


class pantallaAjustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppBar(
        backgroundColor: operatorColor,
        title: Text("Ajustes", style: TextStyle(color: Colors.white)),
      ),
      Container ()
    ]);
  }
}