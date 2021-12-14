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
      body: Center(
        child: Container(
          height: 200,
          child: SfBarcodeGenerator(
            value: 'http://www.syncfusion.com',
            symbology: QRCode(),
            showValue: true,
            textSpacing: 15,
          ),
        ),
      ),
    );
  }
}
