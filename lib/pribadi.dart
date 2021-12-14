import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class pribadi extends StatelessWidget {
  const pribadi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              "Informasi Pribadi",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Text(
                "Nama",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "Darius Haris Simbolon",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Text(
                "No. Handphone",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "085612345678",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                "dariusharis@gmail.com",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
