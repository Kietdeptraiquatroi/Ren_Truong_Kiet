import 'package:flutter/material.dart';

class ContactModel {
  String name, status;
  int comment, like, share;
  String image;
  String avt;
  bool isSelected;
  String time;

  ContactModel(this.avt, this.name, this.status, this.time, this.image,
      this.like, this.comment, this.share, this.isSelected);
}

class ContactFriends {
  String name;
  String avt;
  bool isSelected;
  String time;

  ContactFriends(this.avt, this.name, this.time, this.isSelected);
}

class ContactNotification {
  String name;
  String status;
  Icon icon;
  Color color;
  String avt;
  bool isSelected;
  String time;

  ContactNotification(this.avt, this.name, this.status, this.time, this.icon,
      this.color, this.isSelected);
}
