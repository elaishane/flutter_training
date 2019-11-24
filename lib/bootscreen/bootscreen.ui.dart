import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BootScreen extends StatefulWidget {
  @override
  _BootScreenState createState() => _BootScreenState();
}

class _BootScreenState extends State<BootScreen> {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              ColorizeAnimatedTextKit(
                text: ["wiseKreator"],
                textStyle: TextStyle(fontSize: 50.0, fontFamily: "Pacifico"),
                colors: [
                  Colors.blue,
                  Colors.grey,
                  Colors.yellow,
                  Colors.green,
                ],
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topCenter,
                //duration: Duration(milliseconds: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
