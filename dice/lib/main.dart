import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNUmber = 1;
  int rightDiceNumber = 1;
void changeDiceFace(){
  setState(() {
    leftDiceNUmber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6) + 1;
  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
              changeDiceFace();
                print('left button is = $leftDiceNUmber');
              },
              child: Image.asset('images/dice$leftDiceNUmber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
               changeDiceFace();
                print('right dice = $rightDiceNumber');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

