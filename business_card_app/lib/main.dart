import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 105,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/myimg.jpg"),
                ),
              ),
              Text(
                "Mohammed Issa Hajjaj",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'MsMadi',
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 28,
                    fontWeight: FontWeight.w300),
              ),
              Divider(
                color: Colors.white70,
                height: 20,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text(
                    "(+970) 597351595",
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                  ),
                  title: Text(
                    "mohammedih31@gmail.com",
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.computer,
                  ),
                  title: Text(
                    "MERN STACK   &   FLUTTER",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
