import 'package:flutter/material.dart';
import 'dart:math';
import './app.dart';
import './restart.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _random = new Random();

  final _quotes = const [
    'Advertising is based on one thing: happiness.',
    'If you don’t like what’s being said, change the conversation.',
    'It wasn\'t a lie, it was ineptitude with insufficient cover.',
    'I guess what I\'m saying is at some point, we\'ve all parked in the wrong garage.',
    'The drunker you are, the funnier I become.',
    'You\'re a house cat. You\'re very important, and you have little to do.'
  ];

  var _quoteIndex = 0;

  void _nextQuote() {
    setState(() {
      _quoteIndex = _quoteIndex + 1;
    });
  }

  void _restartApp() {
    setState(() {
      _quoteIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text(
              'Mad Men Quotes',
              style: TextStyle(fontFamily: 'RobotoMono'),
            ),
            backgroundColor: Colors.grey,
          ),
          body: Center(
            child: _quoteIndex < _quotes.length
                ? App(
                    quotes: _quotes,
                    quoteIndex: _random.nextInt(_quotes.length),
                    nextQuote: _nextQuote)
                : Restart(_restartApp),
          )),
    );
  }
}
