import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  bool isVisible = false;
  Widget buildButton = Container(
    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
    child: Column(
      children: [
        Container(
          height: 1,
          width: 400,
          color: Colors.grey.shade300,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Colors.grey.shade600),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 30,
              width: 2,
              color: Colors.grey.shade300,
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_bubble_outline,
                          color: Colors.grey.shade600),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Comment',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 30,
              width: 2,
              color: Colors.grey.shade300,
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.reply_outlined, color: Colors.grey.shade600),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        Container(
          height: 1,
          width: 400,
          color: Colors.grey.shade300,
        ),
      ],
    ),
  );
  textField() {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Viết bình luận...',
                contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onChanged: (text) {
                setState(() {
                  if (text.length == 0) {
                    isVisible = false;
                  } else {
                    isVisible = true;
                  }
                });
              },
            ),
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
            ),
          ),
        )
      ],
    );
  }

  Widget BuildCart() {
    return Card(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        width: 400,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('Time'),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(150, 0, 10, 0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Colors.white,
                                content: Container(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        ElevatedButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Container(
                                              width: 200,
                                              child: Text(
                                                'Xóa',
                                              ),
                                            )),
                                        ElevatedButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Container(
                                              width: 200,
                                              child: Text(
                                                'Báo cáo',
                                              ),
                                            )),
                                        ElevatedButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Container(
                                              width: 200,
                                              child: Text(
                                                'Ẩn bài viết',
                                              ),
                                            )),
                                      ],
                                    )),
                              ),
                            );
                          });
                        },
                        icon: Icon(Icons.more_horiz),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Text('Quán ăn như lòn'),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'images/NhaHang/1.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Text(
                            'name',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Địa Chỉ: ',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Row(
                children: [
                  Container(
                    child: Material(
                      color: Colors.blue,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.thumb_up_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      '1 like',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '3 comment',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '2 share',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            buildButton,
            textField(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildCart(),
              BuildCart(),
            ],
          ),
        ),
      ),
    );
  }
}

class Expandex {}
