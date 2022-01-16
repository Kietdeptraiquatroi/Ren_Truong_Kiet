import 'dart:convert';
import 'package:InVietNam/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'TienIch/Search.dart';
import 'package:InVietNam/page/TienIch/DiemDen.dart';
import 'package:InVietNam/page/TienIch/AnUong.dart';
import 'package:InVietNam/page/TienIch/KhachSan.dart';
import 'QuanLy/Dia_Danh.dart';
import 'QuanLy/Khach_San.dart';
import 'QuanLy/Nha_Hang.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<DiaDanh_Model> lstDiaDanh = [];
  List<KhachSan_Model> lstKhachSan = [];
  List<NhaHang_Model> lstNhaHang = [];
  List<TaiKhoan_Model> lstTaiKhoan = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('db/data.json');
    final data = await json.decode(response);
    var list1 = data['diadanh'] as List<dynamic>;
    var list2 = data['khachsan'] as List<dynamic>;
    var list3 = data['nhahang'] as List<dynamic>;
    var list4 = data['taikhoan'] as List<dynamic>;

    setState(() {
      lstDiaDanh = list1.map((e) => DiaDanh_Model.fromJson(e)).toList();
      lstKhachSan = list2.map((e) => KhachSan_Model.fromJson(e)).toList();
      lstNhaHang = list3.map((e) => NhaHang_Model.fromJson(e)).toList();
      lstTaiKhoan = list4.map((e) => TaiKhoan_Model.fromJson(e)).toList();
    });
  }

  String img = 'images/DiaDanh/1.jpg';
  String name = 'Đảo Lý Sơn';

  Widget BuildButton(Icon icon, String label) {
    return Expanded(
      child: Container(
        height: 70,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (label == 'Điểm Đến') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiemDen()),
                );
              }
              if (label == 'Ăn Uống') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnUong()),
                );
              }
              if (label == 'Khách Sạn') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KhachSan()),
                );
              }
            });
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.brown)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              Text(label),
            ],
          ),
        ),
      ),
    );
  }

  Widget BuildDiadiem(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Điểm Đến',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dia_Danh()),
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
              itemCount: lstDiaDanh.length,
              itemBuilder: (context, index) {
                return Container(
                    width: 360,
                    height: 370,
                    child: Card(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dia_Danh()),
                          );
                          setState(() {
                            tenDD = lstDiaDanh[index].tenDD;
                            diachiDD = lstDiaDanh[index].diachi;
                            motaDD = lstDiaDanh[index].mota;
                            imgDD = lstDiaDanh[index].imgDD;
                            danhgiaDD = lstDiaDanh[index].danhgia;
                            luotdanhgiaDD = lstDiaDanh[index].luotdanhgia;
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
                                lstDiaDanh[index].imgDD,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                              child: Text(
                                lstDiaDanh[index].tenDD,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
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
                                  lstDiaDanh[index].luotdanhgia.toString() +
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
                              '   ' +
                                  lstDiaDanh[index].mota.substring(0, 55) +
                                  "...",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ));
              }),
        ),
      ],
    );
  }

  Widget BuildAnUong(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Quán Ăn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                            MaterialPageRoute(builder: (context) => Nha_Hang()),
                          );
                          setState(() {
                            tenNH = lstNhaHang[index].tenNhaHang;
                            diachiNH = lstNhaHang[index].diachi;
                            imgNH = lstNhaHang[index].imgNhaHang;
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
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Địa Chỉ: ' + lstNhaHang[index].diachi,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ));
              }),
        ),
      ],
    );
  }

  Widget BuildKhachSan(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Khách Sạn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Khach_San()),
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
          height: 360,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lstKhachSan.length,
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
                                builder: (context) => Khach_San()),
                          );
                          setState(() {
                            tenKS = lstKhachSan[index].tenKS;
                            diachiKS = lstKhachSan[index].diachi;
                            imgKS = lstKhachSan[index].imgKS;
                            danhgiaKS = lstNhaHang[index].danhgia;
                            luotdanhgiaKS = lstNhaHang[index].luotdanhgia;
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
                                lstKhachSan[index].imgKS,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                              child: Text(
                                lstKhachSan[index].tenKS,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
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
                                  lstKhachSan[index].luotdanhgia.toString() +
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
                              'Địa Chỉ: ' + lstKhachSan[index].diachi,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ));
              }),
        ),
      ],
    );
  }

  Widget BuildItem(BuildContext context, int index) {
    return Container(
        width: 400,
        height: 120,
        alignment: Alignment.center,
        child: Card(
            child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dia_Danh()),
            );
            setState(() {
              tenDD = lstDiaDanh[index].tenDD;
              diachiDD = lstDiaDanh[index].diachi;
              motaDD = lstDiaDanh[index].mota;
              imgDD = lstDiaDanh[index].imgDD;
              danhgiaDD = lstDiaDanh[index].danhgia;
              luotdanhgiaDD = lstDiaDanh[index].luotdanhgia;
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
                          lstDiaDanh[index].imgDD,
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
                              lstDiaDanh[index].tenDD,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + lstDiaDanh[index].diachi,
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

  Future Dialog() => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Địa Danh:"),
          content: Container(
            width: 200,
            height: 150,
            child: ListView.builder(
                itemCount: lstDiaDanh.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.brown)),
                      onPressed: () {
                        setState(() {
                          img = lstDiaDanh[index].imgDD;
                          name = lstDiaDanh[index].tenDD;
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text(lstDiaDanh[index].tenDD));
                }),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Tắt',
                  style: TextStyle(fontSize: 25),
                ))
          ],
        );
      });

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(img),
                Container(
                  alignment: Alignment.bottomRight,
                  width: 40,
                  height: 50,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pin_drop,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  width: 400,
                  height: 150,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
                    },
                    icon: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 400,
                  height: 150,
                  child: SizedBox(
                      width: 140,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            Dialog();
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Center(
                            child: Text(
                              name,
                              style: TextStyle(color: Colors.black),
                            ),
                          ))),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                BuildButton(Icon(Icons.camera_alt), 'Điểm Đến'),
                BuildButton(Icon(Icons.local_dining), 'Ăn Uống'),
                BuildButton(Icon(Icons.home), 'Khách Sạn'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            BuildDiadiem(context),
            BuildAnUong(context),
            BuildKhachSan(context),
            Container(
              child: Card(
                  child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  children: [
                    Text(
                      'Khám phá vẻ đẹp quyến rũ của Việt Nam',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '   Việt Nam là quốc gia có diện tích 331.690 km2, dân số khoảng 85.846.997  người (2009). Với lợi thế quốc gia có đường bờ biển dài, Việt Nam nổi tiếng với nhiều danh lam thắng cảnh đẹp, đa dạng và phong phú. Nếu bạn thực hiện một cuộc hành trình dọc vùng núi thổ cẩm, có lẽ bạn nên bắt đầu từ mảnh đất biên giới phía Bắc, nơi có núi non hùng vĩ, thành trì vĩ đại, vững chắc của đất nước... ',
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    Center(
                        child: TextButton(
                      child: Text(
                        'Khám phá thêm',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ))
                  ],
                ),
              )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Ảnh Đẹp',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lstDiaDanh.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      width: 350,
                      height: 200,
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(lstDiaDanh[index].imgDD),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Text(
                'Những điểm du lịch hấp dẫn',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              child: ListView.builder(
                  itemCount: lstDiaDanh.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return BuildItem(context, index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
