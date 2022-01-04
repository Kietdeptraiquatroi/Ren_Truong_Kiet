import 'package:flutter/material.dart';

class phanhoiungdung extends StatelessWidget {
  const phanhoiungdung({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextField _box = new TextField(
      decoration: new InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
    );
    final TextField _box1 = new TextField(
      decoration: new InputDecoration(
        hintText: 'Chủ đề(bắt buộc)',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
    );
    final TextField _box2 = new TextField(
      decoration: new InputDecoration(
        hintText: 'Phản hồi của bạn(bắt buộc)',
        contentPadding: EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
    );
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple[500],
              title: Text('Phản hồi ứng dụng'),
            ),
            body: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    border: Border.all(width: 1.2, color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0))),
                child: _box,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    border: Border.all(width: 1.2, color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0))),
                child: _box1,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 240, 240),
                    border: Border.all(width: 1.2, color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(6.0))),
                child: _box2,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                            color: Colors.deepPurple[500],
                            textColor: Colors.white,
                            child: Text("Gửi"),
                            onPressed: () {}))
                  ],
                ),
              ),
            ])));
  }
}
