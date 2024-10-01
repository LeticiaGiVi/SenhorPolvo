import 'package:flutter/material.dart';
import 'package:senhor_polvo/screens/tela-escolha.dart';

void main() {
  runApp(MyApp());
 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Senhor Polvo',
      home: Escolher(),
    );
  }
}





