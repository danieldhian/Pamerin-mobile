import 'package:flutter/material.dart';
import 'package:pamerin/artikel.dart';
import 'package:pamerin/model/artikel.dart';

class diartikel extends StatelessWidget {
  final Artikel artikel;
  const diartikel({Key? key,required this.artikel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Detail Artikel")),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
            color: Colors.white,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage("img/artikel4.png"),
                  fit: BoxFit.contain,
                )),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Text(artikel.title,
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Text(
                  artikel.text,
                  style: TextStyle(fontSize: 15.0, height: 2),
                  textAlign: TextAlign.left,
                ),
              ))
        ],
      ),
    );
  }
}
