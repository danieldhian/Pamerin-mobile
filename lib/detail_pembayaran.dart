import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class detail_pembayaran extends StatelessWidget {
  const detail_pembayaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Detail Pembayaran"),
      ),
      body: Container(
        
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "ID Tiket",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "2496732E",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Informasi Pemesanan",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Darius Haris Simbolon",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                        child: Text(
                          "Total pembayaran:",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(170, 5, 0, 5),
                        child: Text(
                          "Rp 50.198",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.right,
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
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Text(
                        "Cara Pembayaran:",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Text(
                        "- Bayar sejumlah total pembayaran ke:",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(50, 5, 0, 5),
                      child: Text(
                        "BANK BRI 1029382131923\n(DEODIA LORENSA)",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(50, 5, 0, 5),
                      child: Text(
                        "OVO & DANA 085612345678\n(DEODIA LORENSA)",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Text(
                        "- Batas waktu pembayaran 1x24 setelah Anda melakukan konfirmasi pembelian.",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Text(
                        "- Admin akan mengecek pembayaran Anda maksimal 2 hari kerja setelah Anda melakukan pembayaran",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                      child: Text(
                        "- Jika pembayaran anda tervirifikasi maka pesanan Anda akan segera kami proses",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
