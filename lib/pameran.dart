import 'package:flutter/material.dart';
import 'package:pamerin/detail_pameran.dart';

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
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage("img/pameran2.png"),
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
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              child: Icon(Icons.account_circle_outlined),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                "Mahera Lim",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 7.0,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              image: AssetImage("img/pameran1.png"),
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
                            "Rp 58.000",
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
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Rr Widayaka Kresna",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 7.0,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              image: AssetImage("img/pameran5.png"),
                              fit: BoxFit.contain,
                            )),
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                          child: Text(
                            "Senin, 11 September 2021",
                            style: TextStyle(
                                fontSize: 8.0,
                                color: Colors.indigo[900],
                                fontWeight: FontWeight.w700),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Text(
                            "Potrait Me",
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Text(
                            "Rp 60.000",
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
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Ikal Simon",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
