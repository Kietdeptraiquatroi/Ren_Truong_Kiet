import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//sdofihsuodhfvshudfhsdhidhf
class MyApp extends StatelessWidget {
  //
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Máy Tính Điện Thoại', //sdiufgisdgfisdgufmsudf
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//sdfssdfsdfsdfsdf
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//sfsdfsetrerywe9rhdsiaufhysef
class _MyHomePageState extends State<MyHomePage> {
  int so1 = 0, so2 = 0;
  String PhepTinh = "", KetQua = "", text = "0";

  void btnClicked(String btnText) {
    //
    if (btnText == "C") {
      //
      KetQua = ""; //
      text = ""; //
      so1 = 0; //
      so2 = 0; //
    } else if (btnText == "+" || //
        btnText == "-" || //
        btnText == "x" || //
        btnText == "/") {
      //
      so1 = int.parse(text); //
      KetQua = "";

      ///
      PhepTinh = btnText; //
    } else if (btnText == "=") {
      //
      so2 = int.parse(text); //
      if (PhepTinh == "+") {
        //ưeuioaysujmdfhusauf
        KetQua = (so1 + so2).toString();
      } else if (PhepTinh == "-") {
        KetQua = (so1 - so2).toString();
      } else if (PhepTinh == "x") {
        KetQua = (so1 * so2).toString();
      } else if (PhepTinh == "/") {
        KetQua = (so1 / so2).toString();
      }
    } else {
      KetQua = int.parse(text + btnText).toString();
    }
    setState(() {
      text = KetQua;
    });
  }

  Widget _buildButton(String value, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: FloatingActionButton(
          onPressed: () => btnClicked(value),
          backgroundColor: color,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }

  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Máy Tính"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.black,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(10),
                child: Text(text,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w100,
                        color: Colors.white)),
              ),
            ),
            Container(
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildButton("7", Colors.grey.shade700),
                      _buildButton("8", Colors.grey.shade700),
                      _buildButton("9", Colors.grey.shade700),
                      _buildButton("/", Colors.yellow),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("4", Colors.grey.shade700),
                      _buildButton("5", Colors.grey.shade700),
                      _buildButton("6", Colors.grey.shade700),
                      _buildButton("x", Colors.yellow),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("1", Colors.grey.shade700),
                      _buildButton("2", Colors.grey.shade700),
                      _buildButton("3", Colors.grey.shade700),
                      _buildButton("-", Colors.yellow),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("C", Colors.grey.shade700),
                      _buildButton("0", Colors.grey.shade700),
                      _buildButton("=", Colors.grey.shade700),
                      _buildButton("+", Colors.yellow),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
