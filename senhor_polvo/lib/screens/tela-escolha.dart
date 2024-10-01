import 'package:flutter/material.dart';
import 'package:senhor_polvo/screens/pagina-inicial-crianca.dart';
import 'package:senhor_polvo/screens/tela-inicial-pais.dart';

class Escolher extends StatelessWidget {
  const Escolher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Inicial')),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/background.jpg'), 
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Você é:'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inicial_Pais()),
                  );
                },
                child: Text('Responsável'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inicial_Crianca()),
                  );
                },
                child: Text('Criança'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
