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
        Duration(seconds: 5),
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
          Icon(
            Icons.facebook,
            size: 150,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'FaceBook',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          )
        ],
      )),
    );
  }
}
