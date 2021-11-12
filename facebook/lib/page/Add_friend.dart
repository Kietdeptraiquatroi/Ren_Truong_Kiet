import 'package:flutter/material.dart';
import 'data/data.dart';

class AddFriend extends StatefulWidget {
  @override
  _AddFriendState createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  List<ContactFriends> contacts = [
    ContactFriends(
        'images/avartar/avt8.jpg', "Trịnh Thị Kim Vi", "3 tuần", false),
    ContactFriends(
        'images/avartar/avt9.jpg', "Nguyễn Thị Thanh Tuyền", "2 tuần", false),
    ContactFriends('images/avartar/avt10.jpg', "Đỗ Khánh Vy", "1 tháng", false),
    ContactFriends(
        'images/avartar/avt11.jpg', "Lan Ngọc", "24 phút trước", false),
    ContactFriends(
        'images/avartar/avt12.jpg', "Trần Ngọc Thảo Uyên", "4 năm", false),
    ContactFriends(
        'images/avartar/avt13.jpg', "Thu Uyên", "2 ngày trước", false),
    ContactFriends(
        'images/avartar/avt14.jpg', "Nguyễn Tuyền", "4 ngày trước", false),
    ContactFriends('images/avartar/avt15.jpg', "Khánh Vy", "1 tháng", false),
    ContactFriends(
        'images/avartar/avt16.jpg', "Khánh Ngọc", "27 phút trước", false),
    ContactFriends('images/avartar/avt17.jpg', "Ngọc Uyên", "3 năm", false),
  ];
  List<ContactFriends> selectedListTitle = [];

  Widget buildAddfr(
      String avt, String name, String time, bool isSelected, int index) {
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
            Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: CircleBorder(),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('$avt'), fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
                      Text(
                        time,
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Xác Nhận')),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Xóa',
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
              return buildAddfr(contacts[index].avt, contacts[index].name,
                  contacts[index].time, contacts[index].isSelected, index);
            }),
          ),
        ),
      ),
    );
  }
}
