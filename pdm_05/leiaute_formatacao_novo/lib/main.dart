import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildContainer(Colors.red),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildContainer(Colors.yellow),
                  buildContainer(Colors.green),
                ],
              ),
              buildContainer(Colors.lightBlue),
            ],
          ),
        ),
      ),
    );
  }
}

Container buildContainer(Color color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
  );
}
