// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';


class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var numberDice = 1;
  Random random = Random();
  void _rolledDice() {
    setState(() {
      numberDice = random.nextInt(6) + 1;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Dado Lanzado!'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Dado'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dice/dice_$numberDice.png',
                width: 170,
              ),
              Text(
                'Numero de dado: $numberDice',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Colors.lightBlueAccent,
                )),
                onPressed: _rolledDice,
                icon: const Icon(Icons.refresh),
                label: const Text('Roll'),
              )
            ],
          ),
        ),
      ),
    );
  }
}