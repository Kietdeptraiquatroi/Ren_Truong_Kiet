import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget buildFr(String avt, String name) {
    return Container(
      color: Colors.grey.shade100,
      width: 100,
      height: 150,
      child: Column(
        children: [
          Image.asset(avt),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text('Trang cá nhân'),
              ),
            ),
            Icon(
              Icons.create,
              color: Colors.black,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      height: 220,
                      child: Image.asset('images/nen.jpg'),
                    ),
                    Positioned(
                      top: 60,
                      left: 104,
                      child: Container(
                        child: Material(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: CircleBorder(),
                          child: Ink.image(
                            image: AssetImage(
                              'images/TamTuSat.png',
                            ),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tam Tự Sát',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.create,
                                color: Colors.white,
                              ),
                              Text(
                                ' Chỉnh sửa trang cá nhân',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.grey,
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey,
                  width: 350,
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ở đâu có siêu nhân ở đó có công lý',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.grey,
                          size: 25,
                        ),
                        Text(
                          ' Sống tại Trái Đất',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.grey, size: 25),
                        Text(' Độc thân', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.wifi, color: Colors.grey, size: 25),
                        Text(' Có 1,5 Triệu người theo dõi',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.more_horiz, color: Colors.grey, size: 25),
                        Text(' Xem thông tin giới thiệu của bạn',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 40,
                  color: Colors.lightBlue.shade100,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Chỉnh sửa chi tiết công khai'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey,
                  width: 350,
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Bạn bè',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Tìm bạn bè',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: buildFr('images/1.jpg', 'Gao Đỏ'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: buildFr('images/2.jpg', 'Gao Xanh'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: buildFr('images/3.jpg', 'Gao Vàng'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: buildFr('images/avartar/avt8.jpg', 'Gái'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: buildFr('images/avartar/avt9.jpg', 'Gái'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: buildFr('images/avartar/avt10.jpg', 'Gái'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 40,
                  color: Colors.grey.shade300,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Xem tất cả bạn bè',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.grey,
                  width: 350,
                  height: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
