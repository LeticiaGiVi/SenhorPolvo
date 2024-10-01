import 'package:flutter/material.dart';
import 'package:senhor_polvo/components/footer_crianca.dart';

class Inicial_Crianca extends StatelessWidget {
  const Inicial_Crianca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Center(child: Text('Página 2')),
          ),
          FooterCrianca(),
        ],
      ),
    );
  }
}

