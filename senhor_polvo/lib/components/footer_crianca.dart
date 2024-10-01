import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 

class FooterCrianca extends StatelessWidget {
  const FooterCrianca({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(164, 97, 195, 1.000), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [
          Icon(Icons.book, color: Colors.black), 
          Icon(Icons.flag, color: Colors.black), 
          Container(
            padding: EdgeInsets.all(10), 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow, 
            ),
            child: FaIcon(FontAwesomeIcons.octopusDeploy, color: Colors.black), 
          ),
          Icon(Icons.person, color: Colors.black), 
          Icon(Icons.settings, color: Colors.black), 
        ],
      ),
    );
  }
}
