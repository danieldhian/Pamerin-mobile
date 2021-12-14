import 'package:flutter/material.dart';
import 'package:pamerin/artikel.dart';
import 'package:pamerin/detail_pameran.dart';
import 'package:pamerin/notifikasi.dart';
import 'package:pamerin/pameran.dart';

class hal_utama extends StatefulWidget {
  const hal_utama({Key? key}) : super(key: key);

  @override
  _hal_utamaState createState() => _hal_utamaState();
}

class _hal_utamaState extends State<hal_utama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("PamerIn"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return notif();
                }));
              },
              icon: Icon(Icons.notifications_none_sharp))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100.0,
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.amber[300],
                  elevation: 3.0,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 50, 5),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: '“Melatih Seni Anak di Masa\nPandemi”',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: '\ndan berbagai artikel lainnya',
                              style: TextStyle(fontSize: 15.0))
                        ])),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.amber,
                          elevation: 2.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return artikel();
                              }));
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Text("Baca Sekarang",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0),
                child: Text(
                  "Pameran Terbaru",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 0.0),
                child: Text(
                  "Ayo, Dapatkan tiketmu sekarang juga!",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 15.0, right: 20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return pameran();
                    }));
                  },
                  child: Text(
                    "Lihat Selengkapnya",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.indigo[900],
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      elevation: 7.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  image: AssetImage("img/home1.png"),
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                              child: Text(
                                "Senin, 13 September 2021",
                                style: TextStyle(
                                    fontSize: 8.0,
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.w700),
                              )),
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child: Text(
                                "Anaztasia Exhibition",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child: Text(
                                "Rp 98.000",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700),
                              )),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Text(
                                  "Rr. Widayaka Kresna",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      elevation: 7.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return detail_pameran();
                          }));
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    image: AssetImage("img/home2.png"),
                                    fit: BoxFit.contain,
                                  )),
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: Text(
                                  "Selasa, 14 September 2021",
                                  style: TextStyle(
                                      fontSize: 8.0,
                                      color: Colors.indigo[900],
                                      fontWeight: FontWeight.w700),
                                )),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Text(
                                  "Kahuripan Exhibition",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                )),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Text(
                                  "Rp 50.000",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w700),
                                )),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                child: Text(
                                  "Mahera Lim",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
