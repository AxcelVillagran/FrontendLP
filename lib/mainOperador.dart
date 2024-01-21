import 'package:flutter/material.dart';
import 'package:frontend/grupoOperador.dart';

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

      appBar: AppBar(
        title: Text(''),
        automaticallyImplyLeading: false,
      ),

      body: pantallas[indicePantalla],
        bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF78203A)),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Color(0xFF78203A)),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Color(0xFF78203A)),
            label: 'Grupos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color(0xFF78203A)),
            label: 'Ajustes',
          ),
        ],
        currentIndex: indicePantalla,
        selectedItemColor: Color(0xFF78203A),
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
    return Center(
      child: Text('Inicio'),
    );
  }
}

class pantallaMapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Mapa'),
    );
  }
}



class pantallaAjustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Ajustes'),
    );
  }
}