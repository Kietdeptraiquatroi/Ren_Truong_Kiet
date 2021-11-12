import 'package:flutter/material.dart';

class DrawerWidger extends StatelessWidget {
  DrawerWidger({Key? key}) : super(key: key);

  Widget Avata = Material(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: CircleBorder(),
    child: Ink.image(
      image: AssetImage(
        'images/TamTuSat.png',
      ),
      height: 150,
      width: 150,
    ),
  );

  Widget buildWidget() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Avata,
          SizedBox(
            height: 20,
          ),
          Text(
            'Tam Tự Sát',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Ba chàng lính ngự lâm',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            width: 340,
            color: Colors.grey,
          ),
          ElevatedButton.icon(
            label: Text('Profile'),
            icon: Icon(Icons.person),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(57),
              side: BorderSide(width: 3, color: Colors.grey.shade200),
            ),
            onPressed: () {},
          ),
          ElevatedButton.icon(
            label: Text('Cài Đặt'),
            icon: Icon(Icons.settings),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(57),
              side: BorderSide(width: 3, color: Colors.grey.shade200),
            ),
            onPressed: () {},
          ),
          Expanded(
              child: SizedBox(
            height: 5,
          )),
          ElevatedButton.icon(
            label: Text('Đăng Xuất'),
            icon: Icon(Icons.logout),
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(57),
              side: BorderSide(width: 3, color: Colors.grey.shade200),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      body: buildWidget(),
    );
  }
}
