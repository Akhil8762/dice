import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_img = 1;
  int right_img = 1;

  void diceRotate() {
    setState(() {
      left_img = Random().nextInt(6) + 1;
      right_img = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      left_img = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$left_img.png')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      right_img = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$right_img.png')),
            ),
          ],
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          child: RaisedButton(
            child: Text('Click'),
            onPressed: () {
              diceRotate();
            },
          ),
        )
      ],
    );
  }
}
