import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/natan.jpg'),
              ),
              Text(
                'Natanael Silva',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              buildCard('+55 86 98120 3055', Icons.phone),
              buildCard('natanso.s11@gmail.com', Icons.email)
            ],
          ),
        ),
      ),
    );
  }
}

Card buildCard(String text, IconData icon) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.red,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    ),
  );
}
