import 'package:flutter/material.dart';
import 'page/Home_page.dart';
import 'page/Add_friend.dart';
import 'page/Notification.dart';
import 'Widget_Drawer.dart';

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int currenIndex = 0;
  bool CheckHome = true;
  bool CheckFriend = false;
  bool CheckNotification = false;
  final tabs = [
    Homepage(),
    AddFriend(),
    ThongBao(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          Text(
            'Facebook',
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                color: Colors.grey.shade300,
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              IconButton(
                  color: Colors.grey.shade300,
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  )),
            ],
          ))
        ],
      )),
      backgroundColor: Colors.white,
      body: tabs[currenIndex],
      drawer: Drawer(child: DrawerWidger()),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currenIndex,
        onTap: (index) {
          setState(() {
            currenIndex = index;
            if (index == 0) {
              CheckHome = true;
              CheckFriend = false;
              CheckNotification = false;
            }
            if (index == 1) {
              CheckHome = false;
              CheckFriend = true;
              CheckNotification = false;
            }
            if (index == 2) {
              CheckHome = false;
              CheckFriend = false;
              CheckNotification = true;
            }
          });
        },
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: CheckHome
                  ? Icon(
                      Icons.home,
                      color: Colors.blue,
                    )
                  : Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                    ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: CheckFriend
                  ? Icon(
                      Icons.people,
                      color: Colors.blue,
                    )
                  : Icon(
                      Icons.people_outline,
                      color: Colors.grey,
                    ),
              label: 'Friend'),
          BottomNavigationBarItem(
              icon: CheckNotification
                  ? Icon(
                      Icons.notifications,
                      color: Colors.blue,
                    )
                  : Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                    ),
              label: 'Notification'),
        ],
      ),
    );
  }
}
