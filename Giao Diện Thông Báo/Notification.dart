import 'package:flutter/material.dart';
import 'data/database.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  Widget BuildCart(String images, String lable) {
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
          Image.asset(images),
          Text(lable),
          Text(
            'inVietNam',
            style: TextStyle(color: Colors.indigo),
          ),
          Container(width: 400, height: 10, color: Colors.grey.shade300)
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text('Có gì mới'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return BuildCart('images/DiaDanh/1.jpg', 'Kiệt Đẹp Trai');
              }),
        ),
      ),
    );
  }
}
