import 'package:InVietNam/Login.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

String tenKH = '';
String imgTK = '';
String ngaysinh = '';
String diachi = '';
String gioitinh = '';
String email = '';
String password = '';

class _ProfileState extends State<Profile> {
  Widget BuildButton(String lable) {
    return Container(
      child: Container(
          width: 400,
          height: 50,
          color: Colors.white,
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        lable,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(width: 400, height: 1, color: Colors.grey)
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Tài Khoản'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 400,
                height: 50,
                color: Colors.white,
                child: TextButton(
                  onPressed: () {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              backgroundColor: Colors.white,
                              title: Row(
                                children: [
                                  Material(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: CircleBorder(),
                                    child: Ink.image(
                                      image: AssetImage(
                                        imgTK,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(tenKH),
                                ],
                              ),
                              content: Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Giới tính: ' + gioitinh),
                                    Text('Ngày sinh: ' + ngaysinh),
                                    Text('Địa Chỉ: ' + diachi),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Tắt'),
                                  child: const Text(
                                    'Tắt',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FirstRoute()),
                                    );
                                    tenKH = '';
                                    imgTK = '';
                                    ngaysinh = '';
                                    diachi = '';
                                    gioitinh = '';
                                    email = '';
                                    password = '';
                                  },
                                  child: const Text(
                                    'Dăng Xuất',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ));
                  },
                  child: Row(
                    children: [
                      Material(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: CircleBorder(),
                        child: Ink.image(
                          image: AssetImage(
                            imgTK,
                          ),
                          height: 45,
                          width: 45,
                        ),
                      ),
                      Text(tenKH,
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              Container(width: 400, height: 1, color: Colors.grey),
              BuildButton('Giới Thiệu'),
              BuildButton('Đường giây nóng'),
              BuildButton('Cài đặt'),
              BuildButton('My Style'),
              BuildButton('My Bookmark'),
              BuildButton('My Love'),
              BuildButton('Rate me!'),
              Container(
                width: 500,
                height: 40,
                color: Colors.grey.shade300,
              ),
              Container(width: 400, height: 1, color: Colors.grey),
              BuildButton('Phản hồi về ứng dụng'),
              BuildButton('Chính sách quyền riêng tư'),
              BuildButton('Điều Khoản ứng dụng'),
              Container(
                width: 500,
                height: 40,
                color: Colors.grey.shade300,
              ),
              Container(width: 400, height: 1, color: Colors.grey),
              BuildButton('Được phát triển bởi InVietNam'),
            ],
          )),
        ));
  }
}
