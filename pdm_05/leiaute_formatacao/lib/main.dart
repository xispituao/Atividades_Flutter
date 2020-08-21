import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildContainer('Row 1', Colors.white),
              buildContainer('Row 2', Colors.red),
              buildContainer('Row 3', Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}

Container buildContainer(String text, Color color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
    child: Text(text, textAlign: TextAlign.center,),
  );
}