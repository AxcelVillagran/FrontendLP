import 'package:flutter/material.dart';
import 'package:frontend/main.dart';

class MainTurista extends StatefulWidget {
  @override
  _MainTurista createState() => _MainTurista();
}

class _MainTurista extends State<MainTurista> {
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
class pantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppBar(
        backgroundColor: touristColor,
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
        backgroundColor: touristColor,
        title: Text("Mapa", style: TextStyle(color: Colors.white)),
      ),
      Container ()
    ]);
  }
}

class pantallaGrupos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: touristColor,
          title: Text("Grupos de Turistas", style: TextStyle(color: Colors.white)),
        ),
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
                    onPressed: () {

                    },
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

            )
            
            
            ],
          ),
        ),
        
        
      ]
    );
  }
}

class pantallaAjustes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: touristColor,
          title: Text("Ajustes", style: TextStyle(color: Colors.white)),
        ),
      ]
    );
  }
}