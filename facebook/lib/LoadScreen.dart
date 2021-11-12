import 'dart:async';

import 'package:flutter/material.dart';
import 'Login_FB.dart';

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstRoute())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/nen_cho.png',
            height: 120,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Tam Tự Sát',
            style: TextStyle(
                fontFamily: 'IrishGrover',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow.shade300),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        ],
      )),
    );
  }
}
