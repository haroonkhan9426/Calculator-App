import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdgsession2/constants/colors.dart';
import 'package:gdgsession2/helpers/calculator-brain.dart';
import 'package:gdgsession2/screens/calculator-screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _waitAndNavigate();
    super.initState();
  }

  _waitAndNavigate() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customLightGreyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo container
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: customWhiteColor,
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _customSign('+'),
                        SizedBox(width: 20),
                        _customSign('-')
                      ],
                    ),
                    Column(
                      children: <Widget>[_customSign('+'), _customSign('-')],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Calculator',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  _customSign(String text) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: customDarkGreyColor),
    );
  }
}
