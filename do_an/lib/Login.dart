import 'dart:convert';

import 'package:InVietNam/page/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Giao_Dien.dart';
import 'model/model.dart';

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  List<TaiKhoan_Model> lstTaiKhoan = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('db/data.json');
    final data = await json.decode(response);
    var list1 = data['diadanh'] as List<dynamic>;
    var list2 = data['khachsan'] as List<dynamic>;
    var list3 = data['nhahang'] as List<dynamic>;
    var list4 = data['taikhoan'] as List<dynamic>;

    setState(() {
      lstTaiKhoan = list4.map((e) => TaiKhoan_Model.fromJson(e)).toList();
    });
  }

  String emailtest = "";
  String passwordtest = "";

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    Widget LoGoSection = Container(
      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircleBorder(),
        child: Ink.image(
          image: AssetImage(
            'images/logo.jpg',
          ),
          height: 150,
          width: 150,
        ),
      ),
    );
    Widget LabelSection = Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 25, 0, 80),
          child: Center(
              child: Text(
            'In Việt Nam',
            style: TextStyle(
                color: Colors.blue.shade900,
                fontSize: 60,
                fontFamily: 'petemoss'),
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
              emailtest = text;
            });
          },
          decoration: InputDecoration(
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
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
        ),
      ),
    );
    Widget PassSection = Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
      child: Center(
        child: TextField(
          obscureText: true,
          onChanged: (text) {
            setState(() {
              passwordtest = text;
            });
          },
          decoration: InputDecoration(
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
            if (emailtest == '' || passwordtest == '') {
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
              for (int i = 0; i < lstTaiKhoan.length; i++) {
                if (emailtest == lstTaiKhoan[i].email) {
                  if (passwordtest == lstTaiKhoan[i].password) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                    tenKH = lstTaiKhoan[i].tenKH;
                    imgTK = lstTaiKhoan[i].imgTK;
                    ngaysinh = lstTaiKhoan[i].ngaysinh;
                    diachi = lstTaiKhoan[i].diachi;
                    gioitinh = lstTaiKhoan[i].gioitinh;
                    email = lstTaiKhoan[i].email;
                    password = lstTaiKhoan[i].password;
                  }
                }
                if (i == lstTaiKhoan.length - 2) {
                  if (emailtest != lstTaiKhoan[i + 1].email ||
                      passwordtest != lstTaiKhoan[i + 1].password) {
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
                      ),
                    );
                  }
                }
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backround.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Expanded(
            child: Column(
              children: [
                LoGoSection,
                LabelSection,
                EmailSection,
                PassSection,
                btnSection,
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue.shade900),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Quay lại',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blue.shade900),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
