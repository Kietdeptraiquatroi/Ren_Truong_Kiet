import 'dart:convert';
import 'package:InVietNam/model/model.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnUong extends StatefulWidget {
  AnUong({Key key}) : super(key: key);
  @override
  _AnUongState createState() => _AnUongState();
}

class _AnUongState extends State<AnUong> {
  List<NhaHang_Model> lstNhaHang = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('db/data.json');
    final data = await json.decode(response);
    var list1 = data['nhahang'] as List<dynamic>;

    setState(() {
      lstNhaHang = list1.map((e) => NhaHang_Model.fromJson(e)).toList();
    });
  }

  Widget BuildAnUong(BuildContext context, int index) {
    return Container(
        width: 400,
        height: 120,
        alignment: Alignment.center,
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Material(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: CircleBorder(),
                      child: Ink.image(
                        image: AssetImage(
                          lstNhaHang[index].imgNhaHang,
                        ),
                        height: 80,
                        width: 80,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: Text(
                              lstNhaHang[index].tenNhaHang,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + lstNhaHang[index].diachi,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 2,
                color: Colors.grey.shade200,
              )
            ],
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    var listView = Container(
      height: 200,
      child: ListView(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            child: Carousel(
              dotColor: Colors.lightGreenAccent,
              dotBgColor: Colors.transparent,
              dotSize: 6.0,
              dotSpacing: 15.0,
              dotPosition: DotPosition.bottomRight,
              images: [
                Image.asset('images/NhaHang/1.jpg', fit: BoxFit.cover),
                Image.asset('images/NhaHang/2.jpg', fit: BoxFit.cover),
                Image.asset('images/NhaHang/3.jpg', fit: BoxFit.cover),
                Image.asset('images/NhaHang/4.jpg', fit: BoxFit.cover),
                Image.asset('images/NhaHang/5.jpg', fit: BoxFit.cover),
                Image.asset('images/NhaHang/6.jpg', fit: BoxFit.cover),
              ],
            ),
          )
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text('Nhà Hàng'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              listView,
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Quán Ăn',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Xem tất cả',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              Container(
                width: 400,
                height: 370,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lstNhaHang.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 370,
                        height: 370,
                        child: Card(
                          color: Colors.grey.shade50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                child: Image.asset(
                                  lstNhaHang[index].imgNhaHang,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                                  child: Text(
                                    lstNhaHang[index].tenNhaHang,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade800,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade800,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade800,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade800,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade800,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    lstNhaHang[index].luotdanhgia.toString() +
                                        " lượt đánh giá",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                                  child: Text(
                                    'Địa chỉ:' + lstNhaHang[index].diachi,
                                    style: TextStyle(fontSize: 13),
                                  )),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Một số điểm Nổi Tiếng',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Xem tất cả',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              Flexible(
                  child: ListView.builder(
                      itemCount: lstNhaHang.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return BuildAnUong(context, index);
                      })),
            ]),
      ),
    );
  }
}
