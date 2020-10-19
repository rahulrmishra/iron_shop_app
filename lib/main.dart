import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), openOnBoard);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
          ),
        ),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
      ),
    );
  }

  void openOnBoard() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Onboarding()),
    );
  }
}
