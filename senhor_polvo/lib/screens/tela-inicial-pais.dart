import 'package:flutter/material.dart';



class Inicial_Pais extends StatefulWidget {
  @override
  _InicialPaisState createState() =>   _InicialPaisState();
}

class   _InicialPaisState extends State<Inicial_Pais> {
  bool isDiarioSelected = true; // Para controlar qual checkbox está selecionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Escolha o Tipo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDiarioSelected = true; 
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: isDiarioSelected ? Colors.blue : Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Diário',
                    style: TextStyle(
                      color: isDiarioSelected ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDiarioSelected = false; 
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: !isDiarioSelected ? Colors.blue : Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Semanal',
                    style: TextStyle(
                      color: !isDiarioSelected ? Colors.white : Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: isDiarioSelected ? Diario() : Semanal(),
          ),
        ],
      ),
    );
  }
}


class Diario extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tempo no app'),
              SizedBox(height: 20),
              Text('Lições feitas'),
              SizedBox(height: 20),
              Text('Acertos e erros'),
              SizedBox(height: 20),
              Text('Conquistas alcançadas'),
            ],
          ),
        ),
    );
  }
}


class Semanal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tempo no app 2'),
              SizedBox(height: 20),
              Text('Lições feitas 2'),
              SizedBox(height: 20),
              Text('Acertos e erros 2'),
              SizedBox(height: 20),
              Text('Conquistas alcançadas 2'),
            ],
          ),
        ),
    );
  }
}