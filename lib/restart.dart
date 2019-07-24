import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function restartHandler;

  Restart(this.restartHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text(
                'Click to go once again!',
                style: TextStyle(fontSize: 26, fontFamily: 'RobotoMono'),
                textAlign: TextAlign.center,
              ),
              textColor: Colors.red[900],
              onPressed: restartHandler,
            ),
          ],
        )
      );
  }
}
