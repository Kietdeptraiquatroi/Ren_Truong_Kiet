import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    Widget LoGoSection = Container(
      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: Icon(
          Icons.drafts,
          color: Colors.pink.shade200,
          size: 90,
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(35))),
      )),
    );
    Widget LabelSection = Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Center(
              child: Text(
            'Signln',
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),
          )),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
          child: Center(
              child: Text(
            'Speak, friend, and enter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ],
    );
    Widget EmailSection = Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Center(
        child: TextField(
          onChanged: (text) {
            setState(() {
              email = text;
            });
          },
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            label: Center(
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    Widget PassSection = Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 60),
      child: Center(
        child: TextField(
          obscureText: true,
          onChanged: (text) {
            setState(() {
              password = text;
            });
          },
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            label: Center(
              child: Text(
                'Password',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
    Widget btnSection = Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Center(
        child: TextButton(
          onPressed: () {
            if (email == '' || password == '') {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Colors.white,
                        title: const Text(
                          'Thông báo:',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        content: Text('Vui Lòng Nhập Đầy Đủ Thông Tin!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Tắt nè'),
                            child: const Text(
                              'Tắt nè',
                              style: TextStyle(
                                  backgroundColor: Colors.pinkAccent,
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ));
            } else {
              if (email == password) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadScreen()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
              }
            }
          },
          child: Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.black, minimumSize: Size(400, 55)),
        ),
      ),
    );
    return Scaffold(
        backgroundColor: Colors.pink.shade200,
        body: Center(
          child: Expanded(
            child: Column(
              children: [
                LoGoSection,
                LabelSection,
                EmailSection,
                PassSection,
                btnSection,
              ],
            ),
          ),
        ));
  }
}

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      body: Center(child: Column()),
    );
  }
}
