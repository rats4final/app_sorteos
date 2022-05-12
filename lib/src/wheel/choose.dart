// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:suerteos/src/wheel/wheel.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key}) : super(key: key);

  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'wheel');
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => Wheel()));
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.blue,
                  child: Center(child: Text('RULETA')),
                ),
              ),
              SizedBox(width: 7),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'list');
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.yellow,
                  child: Center(child: Text('LISTA')),
                ),
              ),
              SizedBox(width: 7),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'dice');
                },
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.red,
                  child: Center(child: Text('DADO')),
                ),
              )
            ]),
      ),
    );
  }
}