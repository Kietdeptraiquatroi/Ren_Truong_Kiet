import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Máy Tính Điện Thoại',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _buildButton(String value, Color color) {
    return Expanded(
      child: Container(
          onPressed: () {},
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
                child: Text(text,
                    style: TextStyle(
                        color: Colors.blue)),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildButton("7", Colors.blue),
                      _buildButton("8", Colors.blue),
                      _buildButton("9", Colors.blue),
                      _buildButton("/", Colors.blue),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("4", Colors.blue),
                      _buildButton("5", Colors.blue),
                      _buildButton("6", Colors.blue),
                      _buildButton("x", Colors.blue),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("1", Colors.blue),
                      _buildButton("2", Colors.blue),
                      _buildButton("3", Colors.blue),
                      _buildButton("-", Colors.blue),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("C", Colors.blue),
                      _buildButton("0", Colors.blue),
                      _buildButton("=", Colors.blue),
                      _buildButton("+", Colors.blue),
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
