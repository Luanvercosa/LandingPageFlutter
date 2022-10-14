import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

void main() => runApp(MeuApp());

// ignore: use_key_in_widget_constructors
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Meu primeiro App")),
      body: Column(
        children: [
          Image(image: AssetImage('assets/muro.jpg')),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Koten',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Jerusalem, Israel',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                )),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                    ),
                    Text('3,280')
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Button(
                  text: 'Ligar',
                  icon: Icons.call,
                  onPress: () {},
                ),
                Button(
                  text: 'Localização',
                  icon: Icons.location_on,
                  onPress: () {},
                ),
                Button(
                  text: 'Compartilhar',
                  icon: Icons.share,
                  onPress: () {},
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'))
        ],
      ),
    ));
  }
}

class Button extends StatelessWidget {
  Button({required this.onPress, required this.icon, required this.text});
  Function onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: onPress(),
            child: Column(
              children: [Icon(icon, color: Colors.blue), Text(text)],
            )));
  }
}
