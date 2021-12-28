import 'package:flutter/material.dart';

import 'package:facebook/page/data/database.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Widget BuildSearch(String image, String name, String diachi, Icon icons) {
    return Container(
      width: 400,
      height: 60,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Material(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: CircleBorder(),
                child: Ink.image(
                  image: AssetImage(
                    image,
                  ),
                  height: 45,
                  width: 45,
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
                    Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      diachi,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
              ),
              icons,
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 400,
            height: 2,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tìm Kiếm'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: 400,
              height: 50 * 20,
              padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return BuildSearch('images/KhachSan/1.jpg',
                        'Khách Sạn 5 sao', 'Vũng Tàu', Icon(Icons.map));
                  }),
            ),
            Container(
              width: 400,
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          'Tìm Kiếm',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
