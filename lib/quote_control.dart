import 'package:flutter/material.dart';

class QuoteControl extends StatelessWidget {
  final Function nextQuote;

  QuoteControl(this.nextQuote);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          'Press me!',
          style: TextStyle(color: Colors.red[900], fontFamily: 'RobotoMono'),
        ),
        onPressed: nextQuote,
      ),
    );
  }
}
