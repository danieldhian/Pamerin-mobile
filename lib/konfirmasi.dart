import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pamerin/detail_pembayaran.dart';

class konfirmasi extends StatelessWidget {
  const konfirmasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Konfirmasi Pembelian"),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
                              child: Text(
                                "Tiket",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(20, 5, 5, 10),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        image: AssetImage("img/tiket1.png"),
                                        fit: BoxFit.contain,
                                      )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                        child: Text(
                                          "Kahuripan Exhibition",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      child: Text("Selasa, 14 September 2021",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.orange[300])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                                child: Text(
                                  "Rp50.000",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                          child: Text("Subtotal: ",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(228, 5, 0, 5),
                            alignment: Alignment.centerRight,
                            child: Text("Rp50.000",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                          child: Text("Kode Unik: ",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(240, 5, 10, 5),
                            alignment: Alignment.centerRight,
                            child: Text("Rp198",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 5),
                          child: Text("Total Pesanan: ",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(180, 5, 10, 5),
                            alignment: Alignment.centerRight,
                            child: Text("Rp50.198",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right))
                      ],
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.red[400],
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detail_pembayaran();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Bayar",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
