// ignore_for_file: prefer_const_constructors

import 'dart:math';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Generator extends StatelessWidget {
  const Generator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home());
  }
}


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  String randomNumber = 'X';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Generador de numeros aleatorio',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Numero Generado: $randomNumber',
              style: TextStyle(fontSize: 25.0),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(
                child: Text('Generar'),
                onPressed: () {
                  setState(() {
                    randomNumber = (Random().nextInt(101) + 1).toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );

    // );
  }
}
