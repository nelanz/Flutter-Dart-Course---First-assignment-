import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final List<String> quotes;
  final int quoteIndex;

  Quote(this.quotes, this.quoteIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quotes[quoteIndex],
        style: TextStyle(fontSize: 24, fontFamily: 'RobotoMono'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
