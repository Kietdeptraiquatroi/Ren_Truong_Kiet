import 'dart:convert';
import 'dart:ffi';

import 'package:InVietNam/API/API.dart';
import 'package:InVietNam/model/model.dart';
import 'package:InVietNam/page/QuanLy/Dia_Danh.dart';
import 'package:InVietNam/page/QuanLy/Khach_San.dart';
import 'package:InVietNam/page/QuanLy/Nha_Hang.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<DiaDanh_Model> lstDiaDanh = [];
  List<KhachSan_Model> lstKhachSan = [];
  List<NhaHang_Model> lstNhaHang = [];

  List<DiaDanh_Model> hienthiDiaDanh = [];
  List<KhachSan_Model> hienthiKhachSan = [];
  List<NhaHang_Model> hienthiNhaHang = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    API(url: "http://10.0.2.2:8000/api/dsjson").getDataString().then((value) {
      final data = json.decode(value);
      var list1 = data['diadanh'] as List<dynamic>;
      var list2 = data['khachsan'] as List<dynamic>;
      var list3 = data['nhahang'] as List<dynamic>;

      setState(() {
        lstDiaDanh = list1.map((e) => DiaDanh_Model.fromJson(e)).toList();
        lstKhachSan = list2.map((e) => KhachSan_Model.fromJson(e)).toList();
        lstNhaHang = list3.map((e) => NhaHang_Model.fromJson(e)).toList();

        hienthiDiaDanh = lstDiaDanh;
        hienthiKhachSan = lstKhachSan;
        hienthiNhaHang = lstNhaHang;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Tìm Kiếm'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: hienthiDiaDanh.length,
                          itemBuilder: (context, index) {
                            return BuildItemDiaDanh(index);
                          }),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: hienthiKhachSan.length,
                          itemBuilder: (context, index) {
                            return BuildItemKhachSan(index);
                          }),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: hienthiNhaHang.length,
                          itemBuilder: (context, index) {
                            return BuildItemNhaHang(index);
                          }),
                    ],
                  ),
                )),
            Container(
              child: _searchBar(),
            ),
          ],
        ));
  }

  _searchBar() {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Search...',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        ),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            hienthiDiaDanh = lstDiaDanh.where((post) {
              var name = post.tenDD.toLowerCase();
              var diachi = post.diachi.toLowerCase();
              return name.contains(text) || diachi.contains(text);
            }).toList();
            hienthiKhachSan = lstKhachSan.where((post) {
              var name = post.tenKS.toLowerCase();
              var diachi = post.diachi.toLowerCase();
              return name.contains(text) || diachi.contains(text);
            }).toList();
            hienthiNhaHang = lstNhaHang.where((post) {
              var name = post.tenNhaHang.toLowerCase();
              var diachi = post.diachi.toLowerCase();
              return name.contains(text) || diachi.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  Widget BuildItemDiaDanh(index) {
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
              SDTDD = lstDiaDanh[index].SDT;
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
                          hienthiDiaDanh[index].imgDD,
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
                              hienthiDiaDanh[index].tenDD,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + hienthiDiaDanh[index].diachi,
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
        ),
      ),
    );
  }

  Widget BuildItemKhachSan(index) {
    return Container(
      width: 400,
      height: 120,
      alignment: Alignment.center,
      child: Card(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Khach_San()),
            );
            setState(() {
              tenKS = lstKhachSan[index].tenKS;
              loaiKS = lstKhachSan[index].loai;
              imgKS = lstKhachSan[index].imgKS;
              diachiKS = lstKhachSan[index].diachi;
              motaKS = lstKhachSan[index].mota;
              SDTKS = lstKhachSan[index].SDT;
              danhgiaKS = lstKhachSan[index].danhgia;
              luotdanhgiaKS = lstKhachSan[index].luotdanhgia;
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
                          hienthiKhachSan[index].imgKS,
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
                              hienthiKhachSan[index].tenKS,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + hienthiKhachSan[index].diachi,
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
        ),
      ),
    );
  }

  Widget BuildItemNhaHang(index) {
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
                          hienthiNhaHang[index].imgNhaHang,
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
                              hienthiNhaHang[index].tenNhaHang,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + hienthiNhaHang[index].diachi,
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
        ),
      ),
    );
  }
}
