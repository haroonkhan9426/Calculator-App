import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdgsession2/constants/colors.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String expression;
  double result;

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
      result == null ? '' : result.toString(),
      style: TextStyle(
          color: customWhiteColor, fontWeight: FontWeight.bold, fontSize: 50),
    );
  }

  _expressionArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
          child: Text(
            expression ?? '',
            style: TextStyle(
                color: customWhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ),
        SizedBox(width: 20),
        IconButton(
          icon: Icon(
            Icons.backspace,
            size: 35,
            color: customRedColor,
          ),
          onPressed: () {
            if (expression != null && expression.length > 0) {
              setState(() {
                expression = expression.substring(0, expression.length - 1);
              });
            }
          },
        ),

      ],
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
                      _allClearButton(),
                      _whiteButton(text: '%'),
                      _whiteButton(text: '/'),
                      _whiteButton(text: '*'),
                    ],
                  ),

                  ///
                  /// Second Row of buttons
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _blackButton(text: '1'),
                      _blackButton(text: '2'),
                      _blackButton(text: '3'),
                      _whiteButton(text: '+'),
                    ],
                  ),

                  ///
                  /// Third Row of buttons
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _blackButton(text: '4'),
                      _blackButton(text: '5'),
                      _blackButton(text: '6'),
                      _whiteButton(text: '-'),
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
                      _blackButton(text: '7'),
                      _whiteButton(text: '+|-'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _blackButton(text: '8'),
                      _blackButton(text: '0'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _blackButton(text: '9'),
                      _whiteButton(text: '.'),
                    ],
                  ),

                  ///
                  /// Green '=' button
                  _greenStretchButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _greenStretchButton() {
    return Container(
      width: 70,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: customGreenColor, borderRadius: BorderRadius.circular(40)),
      child: Center(
        child: Text(
          '=',
          style: TextStyle(
              color: customWhiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _whiteButton({text}) {
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
        onPressed: () {
          setState(() {
            expression = '$expression$text';
          });
        },
      ),
    );
  }

  _allClearButton() {
    return Container(
      width: 70,
      height: 70,
      child: MaterialButton(
        child: Text(
          'AC',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        color: Colors.white,
        shape: CircleBorder(),
        onPressed: () {
          setState(() {
            expression = '';
          });
        },
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
        onPressed: () {
          setState(() {
            if (expression != null) {
              expression = '$expression$text';
            } else {
              expression = text;
            }
            print(expression);
          });
        },
      ),
    );
  }
}
