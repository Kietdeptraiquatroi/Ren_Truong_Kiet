import 'package:flutter/material.dart';
import 'package:InVietNam/page/Home_page.dart';

class Dia_Danh extends StatefulWidget {
  @override
  Dia_DanhState createState() => Dia_DanhState();
}

String tenDD = '';
String diachiDD = '';
String motaDD = '';
String imgDD = '';
int danhgiaDD;
int luotdanhgiaDD;

class Dia_DanhState extends State<Dia_Danh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text(tenDD),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(imgDD),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 25),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_a_photo,
                      size: 40,
                      color: Colors.green.shade200,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tenDD,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
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
                            ],
                          ),
                          Text(
                            luotdanhgiaDD.toString() + " lượt đánh giá",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                color: Colors.white,
                child: Row(children: [
                  Expanded(
                      child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(Icons.phone_sharp,
                            size: 50, color: Colors.grey.shade700),
                        Text(
                          'Liên Hệ',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(Icons.favorite_border,
                            size: 50, color: Colors.grey.shade700),
                        Text(
                          'Yêu Thích',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(Icons.edit_outlined,
                            size: 50, color: Colors.grey.shade700),
                        Text(
                          'Đánh Giá',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 18),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Icon(Icons.bookmark_border,
                            size: 50, color: Colors.grey.shade700),
                        Text(
                          'Đánh Giá',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 18),
                        ),
                      ],
                    ),
                  ))
                ]),
              ),
              Container(
                height: 130,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 0, 25),
                        child: Text(
                          'Giới Thiệu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Icon(
                              Icons.location_on,
                              size: 23,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Expanded(
                            child: Text('Địa chỉ: ' + diachiDD),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 400,
                child: Card(
                    child: Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tổng Quan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: Text(
                          motaDD,
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )),
              ),
              Container(
                width: 400,
                child: Card(
                    child: Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Đánh Giá',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 15),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Column(
                                children: [
                                  Text(
                                    danhgiaDD.toString(),
                                    style: TextStyle(
                                        fontSize: 50,
                                        color: Colors.grey.shade700),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade800,
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade800,
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade800,
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade800,
                                        size: 24,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade800,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        luotdanhgiaDD.toString(),
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 18),
                                      ),
                                      Icon(Icons.people),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Text(
                                        '5',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: 170,
                                      height: 20,
                                      color: Colors.teal,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: 170,
                                      height: 20,
                                      color: Colors.grey.shade200,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: 170,
                                      height: 20,
                                      color: Colors.grey.shade200,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: 170,
                                      height: 20,
                                      color: Colors.grey.shade200,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                      width: 170,
                                      height: 20,
                                      color: Colors.grey.shade200,
                                    )
                                  ],
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          )),
        ));
  }
}
