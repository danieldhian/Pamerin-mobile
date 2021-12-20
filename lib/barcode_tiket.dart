// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class tiket_barcode extends StatefulWidget {
  const tiket_barcode({Key? key}) : super(key: key);

  @override
  _tiket_barcodeState createState() => _tiket_barcodeState();
}

class _tiket_barcodeState extends State<tiket_barcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
          child: Text(
            "Tiket",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 30.0, 0.0, 0.0),
                child: Text(
                  "Kahuripan Exhibition",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 10.0, 0.0, 0.0),
                child: Text(
                  "14 September 2021",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.amber[400],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 50.0, 0.0, 0.0),
                child: Text(
                  "13.00 - 19.00 WIB",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 300,
                padding: EdgeInsets.all(10),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 20.0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    height: 250,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SfBarcodeGenerator(
                        value: '99987815',
                        symbology: QRCode(),
                        showValue: true,
                        textSpacing: 40,
                        textStyle: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red[400],
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Tautkan Tiket",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
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
