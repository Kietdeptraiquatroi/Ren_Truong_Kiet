import 'package:flutter/material.dart';
import 'data/data.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currenIndex = 0;
  List<ContactModel> contacts = [
    ContactModel('images/Kiet.jpg', "Kiệt Đẹp Trai", "Không ai đẹp bằng :/",
        '30p', 'images/Kiet.jpg', 60234, 782, 124, false),
    ContactModel(
        'images/avartar/avt1.jpg',
        "Dusk Music",
        "Tộc trưởng thì chỉ có chuẩn=))",
        '30p',
        'images/image/img1.jpg',
        20,
        782,
        124,
        false),
    ContactModel(
        'images/avartar/avt0.jpg',
        "Nguyễn Văn Trường",
        "Nếu bạn không thể chấp nhận được một tính xấu của người nào đó, thì bạn cũng đừng cố gắng đặt trọn tình cảm của mình vào họ. Bởi mọi thứ cũng sẽ kết thúc vì không ai trên đời là hoàn hảo. ",
        '30p',
        '',
        34,
        782,
        124,
        false),
    ContactModel(
        'images/avartar/avt0.jpg',
        "Nguyễn Văn Su Ren",
        "Chúng ta đi lên từ những bàn tay trắng. Và gây dựng nên một khoản nợ to lớn",
        '30p',
        '',
        20,
        782,
        124,
        false),
    ContactModel(
        'images/avartar/avt2.jpg',
        "Thích Xem Bóng Đá",
        "Hi vọng Xavi sẽ xây dựng lối đá tiki taka đẹp mắt ngày nào cho Barcelona.",
        '50p',
        'images/image/img2.jpg',
        5,
        45,
        43,
        false),
    ContactModel(
        'images/avartar/avt3.jpg',
        "Quân Bi",
        "Cmt bức ảnh bóng đá gần nhất trong máy của ae 💛🖤",
        '20p',
        'images/image/img3.jpg',
        10,
        21,
        77,
        false),
    ContactModel('images/avartar/avt4.jpg', "Đảo Chó", "Rồi đấy m làm gì tao😂",
        '30s', 'images/image/img4.jpg', 15, 89, 56, false),
    ContactModel(
        'images/avartar/avt5.jpg',
        "ＡｌｏｎｅＦｏｒｅｖｅｒ",
        "Trái tim ta cũng không thuận theo ý ta ",
        '10h',
        'images/image/img5.jpg',
        4,
        3,
        125,
        false),
    ContactModel(
        'images/avartar/avt6.jpg',
        "Thầy Giáo Ba",
        "Cứu...cứu...cứu...Hãy mang Thầy quay trở lại nào mấy đứa",
        '12m',
        'images/image/img6.jpg',
        25,
        769,
        34,
        false),
    ContactModel('images/avartar/avt7.jpg', "Sinh Viên IT", "Xin thua nhé...",
        '20s', 'images/image/img7.jpg', 17, 213, 63, false),
  ];

  List<ContactModel> selectedListTitle = [];
  Widget buildButton = Row(
    children: [
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.thumb_up_outlined, color: Colors.grey.shade600),
          TextButton(
              onPressed: () {},
              child: Text(
                'Like',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              )),
        ],
      )),
      Container(
        height: 30,
        width: 2,
        color: Colors.grey.shade300,
      ),
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat_bubble_outline, color: Colors.grey.shade600),
          TextButton(
              onPressed: () {},
              child: Text(
                'Comment',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              )),
        ],
      )),
      Container(
        height: 30,
        width: 2,
        color: Colors.grey.shade300,
      ),
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.reply_outlined, color: Colors.grey.shade600),
          TextButton(
              onPressed: () {},
              child: Text(
                'Share',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              )),
        ],
      )),
    ],
  );

  Widget buildStatus(
      String name,
      String status,
      int comment,
      int like,
      int share,
      String image,
      String avt,
      bool isSelected,
      String time,
      int index) {
    return ListTile(
      title: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Material(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: CircleBorder(),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('$avt'), fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.brightness_1,
                        color: Colors.grey.shade500,
                        size: 5,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.public, color: Colors.grey.shade500),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                status,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          if (contacts[index].image == '')
            (Container())
          else
            (Container(
              child: Image.asset(image),
            )),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    child: Container(
                      child: Material(
                        color: Colors.blue,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      child: Material(
                        color: Colors.red,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  '$like like',
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
                    '$comment comment',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '$share share',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 1,
            width: 350,
            color: Colors.grey.shade300,
          ),
          buildButton,
          Container(
            height: 6,
            width: 400,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: ((BuildContext context, int index) {
            return buildStatus(
                contacts[index].name,
                contacts[index].status,
                contacts[index].comment,
                contacts[index].like,
                contacts[index].share,
                contacts[index].image,
                contacts[index].avt,
                contacts[index].isSelected,
                contacts[index].time,
                index);
          }),
        ),
      ),
    );
  }
}
