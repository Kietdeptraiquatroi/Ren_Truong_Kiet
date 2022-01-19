import 'package:flutter/material.dart';
import 'package:InVietNam/page/Home_page.dart';

class Nha_Hang extends StatefulWidget {
  @override
  Nha_HangState createState() => Nha_HangState();
}

String tenNH = '';
String imgNH = '';
String diachiNH = '';
String SDTNH = '';
String motaNH = '';
int danhgiaNH;
int luotdanhgiaNH;

class Nha_HangState extends State<Nha_Hang> {
  Widget BuildStar(BuildContext context, int INT, double Size, double width) {
    return Container(
      width: width,
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            if (INT > index) {
              return Icon(
                Icons.star,
                color: Colors.yellow.shade800,
                size: Size,
              );
            } else {
              return Icon(
                Icons.star,
                color: Colors.grey,
                size: Size,
              );
            }
          }),
    );
  }

  Widget BuildComment(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: CircleBorder(),
              child: Ink.image(
                image: AssetImage('images/logo.jpg'),
                height: 30,
                width: 30,
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'data',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Row(
                  children: [
                    BuildStar(context, 3, 24, 120),
                    Text('1/8/2020'),
                  ],
                ),
                Text(
                    'ksdjfhskdfhskjfhskdfhskdfhksjdhfksfhskdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaâ')
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget BuildTextField = Row(
    children: [
      Expanded(
        child: TextField(
          onChanged: (text) {},
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Nhập nội dung...',
            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
        height: 50,
        width: 75,
        child: ElevatedButton(
          child: Text(
            'Đăng',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(tenNH),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(imgNH),
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
                            tenNH,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          BuildStar(context, danhgiaNH, 30, 170),
                          Text(
                            luotdanhgiaNH.toString() + " lượt đánh giá",
                            style: TextStyle(
                              fontSize: 18,
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
                    onPressed: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Colors.white,
                                title: const Text(
                                  'Liên Hệ',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                content: Text(SDTNH),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text(
                                      'Đóng',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ));
                    },
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
                            child: Text('Địa chỉ: ' + diachiNH),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              Container(
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
                          motaNH,
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
                                      danhgiaNH.toString(),
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.grey.shade700),
                                    ),
                                    BuildStar(context, danhgiaNH, 24, 120),
                                    Row(
                                      children: [
                                        Text(
                                          luotdanhgiaNH.toString(),
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
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                        Container(
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return index == 0
                                    ? BuildTextField
                                    : BuildComment(context);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
