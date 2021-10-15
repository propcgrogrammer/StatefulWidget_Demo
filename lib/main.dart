import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: new ChangeView(),
  ));
}

class ChangeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChangeState();
}

class ChangeState extends State<ChangeView> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Demo for StatefulWidget'),
      ),
      body: Row(
        children: <Widget>[
          IconButton(
              onPressed: () {
                decrement();
              },
              icon: Icon(Icons.remove)),
          Text(
            '$_counter',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {
                increment();
              },
              icon: Icon(Icons.add)),
        ],
      ),
    );
  }

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }
}
