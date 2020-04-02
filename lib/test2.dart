import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget list(String text) => Card(
        child: Center(
          child: Text(
            text,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  "Welcome on board bro",
                  style: TextStyle(
                    color: Colors.blue[100],
                    fontSize: 32.0,
                  ),
                ),
              ),
              Container(
                child: Expanded(
                  flex: 4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        list("Caption 1"),
                        list("Caption 2"),
                        list("Caption 3"),
                        list("Caption 4"),
                        list("Caption 5"),
                        list("Caption 6"),
                        list("Caption 7"),
                        list("Caption 8"),
                        list("Caption 9"),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
