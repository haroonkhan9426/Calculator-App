import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdgsession2/constants/colors.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String expression;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customLightGreyColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _resultArea(),
            //Expression area
            _expressionArea(),
            // Buttons Area
            _buttonsArea(),
          ],
        ),
      ),
    );
  }

  _resultArea() {
    return Text(
      '4',
      style: TextStyle(
          color: customWhiteColor, fontWeight: FontWeight.bold, fontSize: 50),
    );
  }

  _expressionArea() {
    return Text(
      '4 + 30',
      style: TextStyle(
          color: customWhiteColor, fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  _buttonsArea() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: customDarkGreyColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ///
                  /// First Row of buttons
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _whiteButton(text: 'AC', onPressed: () {}),
                      _whiteButton(text: '%', onPressed: () {}),
                      _whiteButton(text: '/', onPressed: () {}),
                      _whiteButton(text: 'X', onPressed: () {}),
                    ],
                  ),

                  ///
                  /// Second Row of buttons
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _blackButton(text: '1', onPressed: () {}),
                      _blackButton(text: '2', onPressed: () {}),
                      _blackButton(text: '3', onPressed: () {}),
                      _whiteButton(text: '+', onPressed: () {}),
                    ],
                  ),

                  ///
                  /// Third Row of buttons
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _blackButton(text: '4', onPressed: () {}),
                      _blackButton(text: '5', onPressed: () {}),
                      _blackButton(text: '6', onPressed: () {}),
                      _whiteButton(text: '-', onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
            ///
            /// Final two rows
            ///
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _blackButton(text: '7', onPressed: () {}),
                      _whiteButton(text: '+|-', onPressed: () {}),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _blackButton(text: '7', onPressed: () {}),
                      _blackButton(text: '8', onPressed: () {}),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _blackButton(text: '7', onPressed: () {}),
                      _whiteButton(text: '.', onPressed: () {}),
                    ],
                  ),

                  ///
                  /// Green '=' button
                  _greenStretchButton(onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _greenStretchButton({text = '=', onPressed}) {
    return Container(
      width: 70,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: customGreenColor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: customWhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _whiteButton({text, onPressed}) {
    return Container(
      width: 70,
      height: 70,
      child: MaterialButton(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        color: Colors.white,
        shape: CircleBorder(),
        onPressed: onPressed,
      ),
    );
  }

  _blackButton({text, onPressed}) {
    return Container(
      width: 70,
      height: 70,
      child: MaterialButton(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        color: customLightGreyColor,
        shape: CircleBorder(),
        onPressed: onPressed,
      ),
    );
  }
}
