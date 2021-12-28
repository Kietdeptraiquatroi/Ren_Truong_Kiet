import 'package:flutter/material.dart';
import 'data/database.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

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
                  onPressed: () {},
                  child: Row(
                    children: [
                      Material(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: CircleBorder(),
                        child: Ink.image(
                          image: AssetImage(
                            'images/logo.jpg',
                          ),
                          height: 45,
                          width: 45,
                        ),
                      ),
                      Text("Đăng Nhập", style: TextStyle(color: Colors.black)),
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
