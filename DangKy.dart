import 'package:InVietNam/Login.dart';
import 'package:flutter/material.dart';

import 'API/API.dart';

class DangKy extends StatefulWidget {
  @override
  _DangKyState createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();
  final _controller6 = TextEditingController();
  final _controller7 = TextEditingController();
  String kiemtra = "";

  @override
  Widget build(BuildContext context) {
    Widget btnSIGNOUT = Container(
      padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {});
          },
          child: Text(
            'Đăng ký',
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
        appBar: AppBar(
          title: Text('Đăng ký'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Column(
                children: [
                  TextField(
                    controller: _controller1,
                    decoration: InputDecoration(
                      hintText: 'Tên hiển thị',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _controller2,
                    decoration: InputDecoration(
                      hintText: 'Avatar',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _controller3,
                    decoration: InputDecoration(
                      hintText: 'Ngày sinh',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _controller4,
                    decoration: InputDecoration(
                      hintText: 'Giới tính',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _controller5,
                    decoration: InputDecoration(
                      hintText: 'Số điện thoại',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _controller6,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _controller7,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 150, 0, 15),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            String TenTK = _controller1.text;
                            String Avatar = _controller2.text;
                            String NgaySinh = _controller3.text;
                            String GioiTinh = _controller5.text;
                            String SDT = _controller4.text;
                            String Email = _controller6.text;
                            String PassWord = _controller7.text;
                            if (TenTK.length == 0 ||
                                TenTK.length == 0 ||
                                Avatar.length == 0 ||
                                NgaySinh.length == 0 ||
                                GioiTinh.length == 0 ||
                                SDT.length == 0 ||
                                Email.length == 0 ||
                                PassWord.length == 0) {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  content:
                                      Text('Vui lòng nhập đầy đủ thông tin'),
                                ),
                              );
                            } else {
                              API(url: "http://10.0.2.2:8000/api/themtaikhoan/$TenTK/$Avatar/$NgaySinh/$GioiTinh/$SDT/$Email/$PassWord")
                                  .getDataString()
                                  .then((value) {
                                print(value);
                                setState(() {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      backgroundColor: Colors.white,
                                      content: Text('Đăng ký thành công'),
                                    ),
                                  );
                                });
                              });
                            }
                          });
                        },
                        child: Text(
                          'Đăng ký',
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
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
