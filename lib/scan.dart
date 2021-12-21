import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class scan extends StatefulWidget {
  const scan({Key? key}) : super(key: key);

  @override
  State<scan> createState() => _scanState();
}

class _scanState extends State<scan> {
  String code = "";
  String getcode = "";
  Future scanbarcode() async {
        getcode = await FlutterBarcodeScanner.scanBarcode("#990000", "Cancel", true, ScanMode.QR);
    setState(() {
      code = getcode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text(
            "Scan",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 70.0,
            padding: EdgeInsets.all(10.0),
            child: Material(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              elevation: 3.0,
              child: InkWell(
                onTap: () {
                  scanbarcode();
                },
                child: Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image(
                          image: AssetImage("img/vector.png"),
                          fit: BoxFit.contain,
                        )),
                    Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                    Text(
                      "Scan QR Tiket Pameran",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 150),
                        child: Icon(Icons.arrow_forward_ios_rounded))
                  ],
                ),
              ),
            ),
          ),
          Text(code)
        ],
      ),
    );
  }
}
