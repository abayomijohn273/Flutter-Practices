import 'package:flutter/material.dart';

void main() => runApp(MainHome());

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      title: "Example App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation",
          onPressed: null,
        ),
        title: Text("World Text"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text("Hello world"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "Add",
        onPressed: null,
      ),
    );
  }
}
