// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

// import 'dart:html';
// import 'dart:ui';
void main() => runApp(RandomSelector());

class RandomSelector extends StatelessWidget {
  const RandomSelector({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<String> names = [];
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lista ",
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900, //Color de la navbar
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  setState(() {
                    names.removeAt(index);
                  });
                },
                child: ListTile(
                  title: Text(names[index]),
                ),
              );
            },
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Nuevo participante',
                  style: TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 10, bottom: 10),
                            isDense: true),
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Agregar'),
                      onPressed: () {
                        addTolist();
                      },
                    )
                  ],
                ),
                Builder(
                    builder: (context) => ElevatedButton(
                        child: Text("Selecionar un ramdon"),
                        onPressed: () {
                          var random = Random();
                          Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("Persona selecionada es :" +
                                  names[random.nextInt(names.length)])));
                        }))
              ],
            ),
          ))
        ],
      ),
    );
  }

  void addTolist() {
    if (nameController.text.isNotEmpty) {
      setState(() {
        names.add(nameController.text);
      });
    }
  }
}
