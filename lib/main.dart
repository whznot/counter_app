import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isDarkTheme = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkTheme ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: _isDarkTheme ? Colors.black : Colors.white,
        title: Text(
          "john's counter",
          style: TextStyle(
            fontFamily: 'ClashDisplay',
            fontSize: 24,
            color: _isDarkTheme ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(_isDarkTheme ? Icons.wb_sunny : Icons.nightlight_round),
            onPressed: () {
              setState(() {
                _isDarkTheme = !_isDarkTheme;
              });
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(
                  fontFamily: 'ClashDisplay',
                  fontSize: 46,
                  color: _isDarkTheme ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  backgroundColor: Colors.grey[850],
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  backgroundColor: Colors.grey[850],
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
