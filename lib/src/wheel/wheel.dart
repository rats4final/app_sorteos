// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';




class Wheel extends StatefulWidget {
  const Wheel({ Key? key }) : super(key: key);

  @override
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: FortuneWheel(
              animateFirst: false,
              selected: number, //XD
              items: [
                FortuneItem(child: Text('Si')),
                FortuneItem(child: Text('No')),
                FortuneItem(child: Text('Tal Vez')),
                FortuneItem(child: Text('Muy Dudoso')),
                FortuneItem(child: Text('Todo apunta a que si')),
                FortuneItem(child: Text('Es cierto')),
                FortuneItem(child: Text('No cuentes con ello')),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                number = Random().nextInt(3);
              });
            },
            child: Container(
              color: Colors.blue,
              height: 20,
              width: 100,
              child: Center(child: Text('GIRAR')),
            ),
          )
        ],
      ),
    );
  }
}