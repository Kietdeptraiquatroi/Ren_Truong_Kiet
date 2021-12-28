import 'package:flutter/material.dart';
import 'data/database.dart';
import 'TienIch/Search.dart';
import 'TienIch/DiemDen.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
              if (label == 'Điểm Đến') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiemDen()),
                );
              }
              if (label == 'Điểm Đến') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiemDen()),
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

  Widget BuildDiadiem(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 50,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset('images/DiaDanh/2.jpg'),
          ),
          Text('Cao Bằng'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
              children: [
                Image.asset('images/DiaDanh/1.jpg'),
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
                      width: 120,
                      height: 35,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  'Cao Bằng',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  color: Colors.black,
                                )
                              ],
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
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Điểm Đến',
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
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      height: 200,
                      child: Card(
                          child: Center(
                        child: Column(
                          children: [
                            Image.asset('images/DiaDanh/2.jpg'),
                            Text('123')
                          ],
                        ),
                      )),
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Quán Ăn',
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
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      height: 200,
                      child: Card(
                          child: Center(
                        child: Column(
                          children: [
                            Image.asset('images/NhaHang/3.2.jpg'),
                            Text('123')
                          ],
                        ),
                      )),
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Khách Sạn',
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
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      height: 200,
                      child: Card(
                          child: Center(
                        child: Column(
                          children: [
                            Image.asset('images/KhachSan/2.jpg'),
                            Text('123')
                          ],
                        ),
                      )),
                    );
                  }),
            ),
            Text('Khám phá vẻ đẹp quyến rũ của Việt Nam'),
            Text(''),
            Row(
              children: [
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
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      height: 200,
                      child: Card(
                          child: Center(
                        child: Column(
                          children: [
                            Image.asset('images/DiaDanh/1.jpg'),
                          ],
                        ),
                      )),
                    );
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Những điểm du lịch hấp dẫn',
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
              height: 250 * 20,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 350,
                      height: 200,
                      child: Card(
                          child: Center(
                        child: Column(
                          children: [
                            Image.asset('images/DiaDanh/1.jpg'),
                          ],
                        ),
                      )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
