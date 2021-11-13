import 'package:flutter/material.dart';
import 'data/data.dart';

class ThongBao extends StatefulWidget {
  @override
  _ThongBaoState createState() => _ThongBaoState();
}

class _ThongBaoState extends State<ThongBao> {
  List<ContactNotification> contacts = [
    ContactNotification(
        'images/avartar/avt8.jpg',
        "Trịnh Thị Kim Vi",
        "đã nhắc đến bạn trong 1 bình luận",
        "2 phút trước",
        Icon(
          Icons.mode_comment,
          color: Colors.white,
          size: 21,
        ),
        Colors.green,
        false),
    ContactNotification(
        'images/avartar/avt9.jpg',
        "Nguyễn Thị Thanh Tuyền",
        "đã bình luận về ảnh của bạn",
        "21 phút trước",
        Icon(
          Icons.mode_comment,
          color: Colors.white,
          size: 21,
        ),
        Colors.green,
        false),
    ContactNotification(
        'images/avartar/avt10.jpg',
        "Đỗ Khánh Vy",
        "đã bầy tỏ cảm súc về bình luận của bạn",
        "1 giờ trước",
        Icon(
          Icons.favorite,
          color: Colors.white,
          size: 21,
        ),
        Colors.red,
        false),
    ContactNotification(
        'images/avartar/avt11.jpg',
        "Lan Ngọc",
        "đã phản hồi bình luận của bạn về bài viết của cô ấy",
        "34p",
        Icon(
          Icons.mode_comment,
          color: Colors.white,
          size: 21,
        ),
        Colors.green,
        false),
    ContactNotification(
        'images/avartar/avt12.jpg',
        "Trần Ngọc Thảo Uyên",
        "đã bình chia sẽ bài viết của bạn",
        "2 giờ trước",
        Icon(
          Icons.reply,
          color: Colors.white,
          size: 21,
        ),
        Colors.blue,
        false),
    ContactNotification(
        'images/avartar/avt13.jpg',
        "Khánh Ngọc",
        "đã bình chia sẽ bài viết của bạn",
        "12 giờ trước",
        Icon(
          Icons.reply,
          color: Colors.white,
          size: 21,
        ),
        Colors.blue,
        false),
    ContactNotification(
        'images/avartar/avt14.jpg',
        "Thu Uyên",
        "đã nhắc đến bạn trong 1 bình luận",
        "54 phút trước",
        Icon(
          Icons.mode_comment,
          color: Colors.white,
          size: 21,
        ),
        Colors.green,
        false),
    ContactNotification(
        'images/avartar/avt15.jpg',
        "Nguyễn Tuyền",
        "đã bình luận về ảnh của bạn",
        "3 phút trước",
        Icon(
          Icons.mode_comment,
          color: Colors.white,
          size: 21,
        ),
        Colors.green,
        false),
    ContactNotification(
        'images/avartar/avt16.jpg',
        "Khánh Ngọc",
        "đã bầy tỏ cảm súc về bình luận của bạn",
        "2 giờ trước",
        Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 21,
        ),
        Colors.blue,
        false),
    ContactNotification(
        'images/avartar/avt17.jpg',
        "Ngọc Uyên",
        "đã phản hồi bình luận của bạn về bài viết của cô ấy",
        "14p",
        Icon(
          Icons.mode_comment,
          color: Colors.white,
          size: 21,
        ),
        Colors.green,
        false),
  ];
  List<ContactNotification> selectedListTitle = [];
  Widget buildAddfr(String avt, String name, String status, String time,
      Icon icon, Color color, bool isSelected, int index) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                Material(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: CircleBorder(),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('$avt'), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Material(
                        color: color,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: CircleBorder(),
                        child: icon),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 220,
                    height: 40,
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '$name ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: '$status',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 28,
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: ((BuildContext context, int index) {
              return buildAddfr(
                contacts[index].avt,
                contacts[index].name,
                contacts[index].status,
                contacts[index].time,
                contacts[index].icon,
                contacts[index].color,
                contacts[index].isSelected,
                index,
              );
            }),
          ),
        ),
      ),
    );
  }
}
