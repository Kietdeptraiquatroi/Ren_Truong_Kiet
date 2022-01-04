import 'package:flutter/material.dart';

class duongdaynong extends StatelessWidget {
  const duongdaynong({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'INVIETNAM',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[500],
            title: Text('Đường dây nóng'),
          ),
          body: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Công An',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text("113", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Cấp hỏa',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text("114", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Cấp cứu',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text("115", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Tổng đài inVietNam',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Text("0306191289", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
