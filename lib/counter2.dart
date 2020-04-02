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

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterIncrement extends StatelessWidget {
  CounterIncrement({this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text("Increment"),
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
      ++_counter;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CounterIncrement(
          onPressed: _increment,
        ),
        CounterDisplay(
          count: _counter,
        ),
      ],
    );
  }
}
