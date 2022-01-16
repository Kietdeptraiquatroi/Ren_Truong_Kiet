import 'package:flutter/material.dart';
import 'page/Home_page.dart';
import 'page/Profile.dart';
import 'page/Notification.dart';

class SecondRoute extends StatefulWidget {
  SecondRoute({Key key}) : super(key: key);
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int currenIndex = 0;
  bool CheckHome = true;
  bool CheckNotification = false;
  bool CheckProfile = false;
  final tabs = [
    Homepage(),
    Notifications(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currenIndex,
        onTap: (index) {
          setState(() {
            currenIndex = index;
            if (index == 0) {
              CheckHome = true;
              CheckNotification = false;
              CheckProfile = false;
            }
            if (index == 1) {
              CheckHome = false;
              CheckNotification = true;
              CheckProfile = false;
            }
            if (index == 2) {
              CheckHome = false;
              CheckNotification = false;
              CheckProfile = true;
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
              icon: CheckNotification
                  ? Icon(
                      Icons.notifications,
                      color: Colors.blue,
                    )
                  : Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                    ),
              label: 'Notifications'),
          BottomNavigationBarItem(
            icon: CheckProfile
                ? Icon(
                    Icons.person,
                    color: Colors.blue,
                  )
                : Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
