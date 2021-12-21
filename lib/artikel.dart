import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pamerin/detail_artikel.dart';
import 'package:http/http.dart' as http;
import 'package:pamerin/model/artikel.dart';
import 'package:pamerin/model/http_artikel.dart';

class artikel extends StatelessWidget {
  const artikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(child: Text("Artikel")),
        ),
        body: ListView(
          children: <Widget>[
            FutureBuilder<List<Artikel>>(
                future: httpartikel().connectAPI(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Column(
                      children: List.generate(
                          1,
                          (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SizedBox(),
                              )),
                    );
                  } else {
                    print(snapshot.data);
                    return Column(
                        children: List.generate(
                      snapshot.data!.length,
                      (index) => Container(
                        padding: EdgeInsets.all(10.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          elevation: 7.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return diartikel(
                                  artikel: snapshot.data![index] as Artikel,
                                );
                              }));
                            },
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        image: AssetImage(
                                            "img/artikel1.png"),
                                        fit: BoxFit.contain,
                                      )),
                                ),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                    child: Text(
                                      "${snapshot.data![index].title}",
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
                  }
                })
          ],
        )
        );
  }
}
