import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class notif extends StatelessWidget {
  const notif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(child: Text("Notifikasi")),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                              "1 detik yang lalu",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                            child: Text(
                              "Kahuripan Exhibition akan segera dibuka",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Text(
                              "Segera siapkan perangkatmu dan liat pamerannya!",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: Text(
                              "1 minggu yang lalu",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                            child: Text(
                              "Pemesanan berhasil, segera lakukan pembayaran!",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Text(
                              "Anda telah membeli karya seni, segera lakukan pembayaran\ndalam 1x24 jam",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
