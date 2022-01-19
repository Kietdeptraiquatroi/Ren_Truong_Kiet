import 'dart:convert';
import 'package:InVietNam/API/API.dart';
import 'package:InVietNam/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'TienIch/Search.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<ThongBao_Model> lstThongBao = [];

  Widget BuildCart(BuildContext context, int index) {
    return Card(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
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
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Việt Nam',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('Nổi bật'),
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Image.asset(lstThongBao[index].img),
              Container(
                padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 400,
                    height: 40,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 180, 15, 0),
                child: Text(
                  lstThongBao[index].tieude,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(lstThongBao[index].noiDung),
          ),
          Text(
            'inVietNam',
            style: TextStyle(color: Colors.indigo),
          ),
        ],
      ),
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    API(url: "http://10.0.2.2:8000/api/dsjson").getDataString().then((value) {
      final data = json.decode(value);
      var list = data['thongbao'] as List<dynamic>;
      setState(() {
        lstThongBao = list.map((e) => ThongBao_Model.fromJson(e)).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text('Có gì mới'),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Search()),
                  );
                },
                icon: Icon(Icons.search)),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              itemCount: lstThongBao.length,
              itemBuilder: (context, index) {
                return BuildCart(context, index);
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.white,
              title: Text(
                'Đăng bản tin',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              content: Container(
                height: 250,
                width: 400,
                child: Column(
                  children: [
                    TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                        hintText: 'Tiêu đề...',
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32)),
                      ),
                      onChanged: (text) {},
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      height: 150,
                      child: TextField(
                        minLines: 10,
                        maxLines: 15,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Nội dung...',
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        onChanged: (text) {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      width: 400,
                      height: 50,
                      child: OutlinedButton(
                          child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.file_upload_outlined),
                            Text('Hình ảnh'),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: Text(
                    'Đóng',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    'Đăng',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
