import 'package:flutter/material.dart';
import 'loginScreen.dart';

const touristColor = Color(0xFF78203A);
const operatorColor = Color.fromARGB(255, 73, 32, 120);

//final String apiUrl = "http://192.168.3.4:5000/createTouristGroup";
final String apiUrl = "http://192.168.3.4:5000/";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flex & Travel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}