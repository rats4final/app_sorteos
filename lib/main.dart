// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:suerteos/src/dice/dice.dart';
import 'package:suerteos/src/list/RandomSelector.dart';
import 'package:suerteos/src/random/generator.dart';
import 'package:suerteos/src/wheel/choose.dart';
import 'package:suerteos/src/wheel/wheel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUERTEOS',
      initialRoute: 'choose',
      routes: {
        'choose' : (BuildContext context ) => Choose(),
        'wheel' : (BuildContext context ) => Wheel(),
        'list' : (BuildContext context) => RandomSelector(),
        'dice' :(BuildContext context) => Dice(),
        'generator': (BuildContext context) => Generator(),
      },
    );
  }
}
