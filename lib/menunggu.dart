import 'package:flutter/material.dart';
import 'package:pamerin/pembayaran.dart';

class menunggu extends StatelessWidget {
  const menunggu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 50, 15, 10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 3.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: 'ID Tiket ',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: '2396732E',
                              style: TextStyle(fontSize: 18.0))
                        ])),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                            child: Text(
                              "Total pembayaran: ",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 150),
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Rp 148.198",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue[900],
                          elevation: 2.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return pembayaran();
                              }));
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Text("Unggah Pembayaran",
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
              )
            ],
          )
        ],
      ),
    );
  }
}
