import 'package:flutter/material.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Test App"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Row(children: [
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.green,
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.deepPurpleAccent,
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.lime,
              )),
        ]),
      ),
    );
  }
}
