import 'dart:convert';
import 'package:InVietNam/API/API.dart';
import 'package:InVietNam/model/model.dart';
import 'package:InVietNam/page/QuanLy/Dia_Danh.dart';
import 'package:InVietNam/page/QuanLy/Nha_Hang.dart';
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

  Widget BuildStar(BuildContext context, int INT) {
    return Container(
      width: 150,
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            if (INT > index) {
              return Icon(
                Icons.star,
                color: Colors.yellow.shade800,
                size: 30,
              );
            } else {
              return Icon(
                Icons.star,
                color: Colors.grey,
                size: 30,
              );
            }
          }),
    );
  }

  Widget BuildAnUong(BuildContext context, int index) {
    return Container(
        width: 400,
        height: 120,
        alignment: Alignment.center,
        child: Card(
            child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Nha_Hang()),
            );
            setState(() {
              tenNH = lstNhaHang[index].tenNhaHang;
              imgNH = lstNhaHang[index].imgNhaHang;
              diachiNH = lstNhaHang[index].diachi;
              SDTNH = lstNhaHang[index].SDT;
              motaNH = lstNhaHang[index].mota;
              danhgiaNH = lstNhaHang[index].danhgia;
              luotdanhgiaNH = lstNhaHang[index].luotdanhgia;
            });
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)),
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + lstNhaHang[index].diachi,
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }

  @override
  void initState() {
    super.initState();
    API(url: "http://10.0.2.2:8000/api/dsjson").getDataString().then((value) {
      final data = json.decode(value);
      var list3 = data['nhahang'] as List<dynamic>;
      setState(() {
        lstNhaHang = list3.map((e) => NhaHang_Model.fromJson(e)).toList();
      });
    });
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
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Quán Ăn',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nha_Hang()),
                        );
                      },
                      child: Text(
                        'Xem tất cả',
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              Container(
                width: 400,
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lstNhaHang.length,
                    itemBuilder: (context, index) {
                      return Container(
                          width: 360,
                          height: 370,
                          child: Card(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Nha_Hang()),
                                );
                                setState(() {
                                  tenNH = lstNhaHang[index].tenNhaHang;
                                  imgNH = lstNhaHang[index].imgNhaHang;
                                  diachiNH = lstNhaHang[index].diachi;
                                  SDTNH = lstNhaHang[index].SDT;
                                  motaNH = lstNhaHang[index].mota;
                                  danhgiaNH = lstNhaHang[index].danhgia;
                                  luotdanhgiaNH = lstNhaHang[index].luotdanhgia;
                                });
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                    child: Image.asset(
                                      lstNhaHang[index].imgNhaHang,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                                    child: Text(
                                      lstNhaHang[index].tenNhaHang,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      BuildStar(
                                          context, lstNhaHang[index].danhgia),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        lstNhaHang[index]
                                                .luotdanhgia
                                                .toString() +
                                            " lượt đánh giá",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Địa Chỉ: ' + lstNhaHang[index].diachi,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ));
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
