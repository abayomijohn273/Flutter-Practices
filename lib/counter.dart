import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Counter App"),
          ),
          body: Center(
            child: Center(
              child: Counter(),
            ),
          )),
    );
  }
}

// Using a statefull widget
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: _increment,
        ),
        Text("Clicked $_counter times"),
      ],
    );
  }
}
