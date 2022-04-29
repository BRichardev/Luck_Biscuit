// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Array de frases
  var listaFrases = [
    "Frase 01",
    "Frase 02",
    "Frase 03",
    "Frase 04",
    "Frase 05",
    "Frase 06",
    "Frase 07",
    "Frase 08",
  ];

// Var que armazena caminha das imagens do biscoito
  var imgBiscoito = "images/biscoito_inteiro.png";

// Var que armazena a frase da sorte
  var fraseSorte = "Clique no botão para quebrar o biscoito";

  void quebrarBiscoito() {
    var num = Random().nextInt(listaFrases.length);

    setState(() {
      fraseSorte = listaFrases[num];

      imgBiscoito = "images/biscoito_quebrado.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscoito da Sorte"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imgBiscoito),
              radius: 80,
              backgroundColor: Colors.white,
            ),
            Text(
              fraseSorte,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontFamily: 'Source Sans Pro'),
            ),
            ElevatedButton(
                onPressed: quebrarBiscoito,
                child: Text("Quebrar biscoito"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal, onPrimary: Colors.white))
          ],
        ),
      )),
    );
  }
}
