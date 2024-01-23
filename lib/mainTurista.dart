import 'package:flutter/material.dart';
import 'package:frontend/crearGrupo.dart';

class MainTurista extends StatefulWidget {
  @override
  _MainTurista createState() => _MainTurista();
}

class _MainTurista extends State<MainTurista> {


int indicePantalla = 0;

@override
  Widget build(BuildContext context) {
    
    List<Widget> pantallas = [
    pantallaInicio(),
    pantallaMapa(),
    pantallaGrupos(),
    pantallaAjustes(),
  ];
    return Scaffold(

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

class pantallaGrupos extends StatelessWidget {

  
  
  @override
  Widget build(BuildContext context) {
    void navigateToCrearGrupo() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CrearGrupo()),
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
      children: [Text('Ajustes'),

      ]
    );
  }
}