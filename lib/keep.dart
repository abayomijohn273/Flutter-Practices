// import flutter material package

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Bayo sha..too good",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bayo Program"),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(19),
            child: RaisedButton(
              child: Text("Add Product"),
              onPressed: () {},
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Text("Welcome on board"),
                Text("Welcome on board 1"),
                Text("Welcome on board 2"),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
