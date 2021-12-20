import 'package:flutter/material.dart';
import 'package:pamerin/detail_pameran.dart';
import 'package:pamerin/model/http_pameran.dart';
import 'package:pamerin/model/pameran.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class pameran extends StatelessWidget {
  const pameran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text("Pameran"),
        ),
        body: ListView(
          children: <Widget>[
            FutureBuilder<List<Pameran>>(
                future: httppameran().pameranapi(),
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
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                  elevation: 7.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return detail_pameran(
                                            pameran: snapshot.data![index]
                                                as Pameran);
                                      }));
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 10, 5, 5),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image(
                                                image: AssetImage(
                                                    "img/pameran2.png"),
                                                fit: BoxFit.contain,
                                              )),
                                        ),
                                        Container(
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.fromLTRB(
                                                0, 10, 10, 10),
                                            child: Text(
                                              "${snapshot.data![index].date}",
                                              style: TextStyle(
                                                  fontSize: 8.0,
                                                  color: Colors.indigo[900],
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 5),
                                            child: Text(
                                              "${snapshot.data![index].nama}",
                                              style: TextStyle(
                                                  fontSize: 13.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 5),
                                            child: Text(
                                              "Rp" +
                                                  " " +
                                                  "${snapshot.data![index].price}",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 5),
                                              child: Icon(Icons
                                                  .account_circle_outlined),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "Mahera Lim",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    );
                  }
                })
          ],
        ));
  }
}
