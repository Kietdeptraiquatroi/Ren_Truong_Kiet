import 'dart:convert';
import 'dart:ffi';

import 'package:InVietNam/model/model.dart';
import 'package:InVietNam/page/QuanLy/Dia_Danh.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<DiaDanh_Model> lstDiaDanh = [];
  List<DiaDanh_Model> hienthi = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('db/data.json');
    final data = await json.decode(response);
    var list1 = data['diadanh'] as List<dynamic>;

    setState(() {
      lstDiaDanh = list1.map((e) => DiaDanh_Model.fromJson(e)).toList();
      hienthi = lstDiaDanh;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tìm Kiếm'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
          itemCount: hienthi.length + 1,
          itemBuilder: (context, index) {
            return index == 0 ? _searchBar() : BuildItem(index - 1);
          }),
    );
  }

  _searchBar() {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(hintText: 'Search...'),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            hienthi = lstDiaDanh.where((post) {
              var name = post.tenDD.toLowerCase();
              var diachi = post.diachi.toLowerCase();
              return name.contains(text) || diachi.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  Widget BuildItem(index) {
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
              tenDD = hienthi[index].tenDD;
              diachiDD = hienthi[index].diachi;
              motaDD = hienthi[index].mota;
              imgDD = hienthi[index].imgDD;
              danhgiaDD = hienthi[index].danhgia;
              luotdanhgiaDD = hienthi[index].luotdanhgia;
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
                          hienthi[index].imgDD,
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
                              hienthi[index].tenDD,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Địa chỉ: ' + hienthi[index].diachi,
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
}
