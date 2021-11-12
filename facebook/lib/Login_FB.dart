import 'package:flutter/material.dart';
import 'Giao_Dien.dart';

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
        child: Icon(
          Icons.facebook,
          size: 150,
          color: Colors.blue.shade900,
        ));
    Widget LabelSection = Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 25, 0, 80),
          child: Center(
              child: Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 60,
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
            border: OutlineInputBorder(),
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
            border: OutlineInputBorder(),
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
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ));
            } else {
              if (email == password) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              } else {
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
                          content: Text('Sai email hoặc mật khẩu'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Tắt nè'),
                              child: const Text(
                                'Tắt nè',
                                style: TextStyle(
                                  backgroundColor: Colors.pinkAccent,
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ));
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
              backgroundColor: Colors.blue.shade900,
              minimumSize: Size(400, 55)),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
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
