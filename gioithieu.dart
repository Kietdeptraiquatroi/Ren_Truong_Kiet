import 'package:flutter/material.dart';
import './gioithieu.dart';

class GioiThieu extends StatelessWidget {
  const GioiThieu({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[500],
            title: Text('Giới thiệu'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Giới thiệu',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'inVietNam App là ứng dụng di động miễn phí giúp người dân và '
                        'du khách khám phá thành phố một cách an toàn, dễ dàng  inVietNam App '
                        'đưa ra gợi ý theo ngữ cảnh để trả lời ĐI ĐÂU ? '
                        ' ĂN GÌ?LÀM GÌ ?CÓ GÌ HAY ? tại Việt Nam. '
                        'inVietNam App giúp chính quyền và danh nghiệp tiếp cân '
                        'hỗ trợ, giới tiệu sản phẩm dịch vụ đến khách hàng mọi lúc,'
                        'mọi nơi'
                        'Chúng tôi cập nhật ứng dụng thường xuyên với mong muốn '
                        'làm cho nó tốt hơn. Vui lòng tải phiên bản mới nhất để trải'
                        'nghiêm tất cả các tính năng có sẵn và cải tiến.'),
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-Sáng lập: Ren, Trường, Kiệt")),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-Thiết kế: Trường, Ren Kiệt")),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-Phát triển: Kiệt, Trường, Ren")),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-Cố vấn:Lữ Cao Tiến")),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("-Đối tác:  Trung tâm xúc tiến du lịch"),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
