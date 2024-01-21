import 'package:flutter/material.dart';


class ShowOperatorGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.asset(
              'assets/background_image.jpg',  // Replace with your actual image asset
              fit: BoxFit.cover,
            ),
            // Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text at the top
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Grupos de Operadores',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Crear Button
                    ElevatedButton(
                      onPressed: () {
                        // Action for "Crear" button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF78203A),
                      ),
                      child: Text(
                        'Crear',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // Unirse Button
                    ElevatedButton(
                      onPressed: () {
                        // Action for "Unirse" button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF78203A),
                      ),
                      child: Text(
                        'Unirse',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}