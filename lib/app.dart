import 'package:flutter/material.dart';

import './quote.dart';
import './quote_control.dart';

class App extends StatelessWidget {
  final List<String> quotes;
  final int quoteIndex;
  final Function nextQuote;

  App({this.quotes, this.quoteIndex, this.nextQuote});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Quote(quotes, quoteIndex),
        QuoteControl(nextQuote)
      ],
    );
  }
}
