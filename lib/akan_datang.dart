import 'package:flutter/material.dart';
import 'package:pamerin/barcode_tiket.dart';

class akan_datang extends StatelessWidget {
  const akan_datang({Key? key}) : super(key: key);

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
                  elevation: 7.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return tiket_barcode();
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
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
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                  text: 'ID Tiket ',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: '2396732E',
                                    style: TextStyle(fontSize: 18.0))
                              ])),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                              child: Text("Kahuripan Exhibition",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                "Selasa, 14 September 2021",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.yellow[600]
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
