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
}

class ContactFriends {
  String name;
  String avt;
  bool isSelected;
  String time;

  ContactFriends(this.avt, this.name, this.time, this.isSelected);
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
}
