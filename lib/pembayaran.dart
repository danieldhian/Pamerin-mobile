import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';

class pembayaran extends StatefulWidget {
  const pembayaran({Key? key}) : super(key: key);

  @override
  State<pembayaran> createState() => _pembayaranState();
}

class _pembayaranState extends State<pembayaran> {
  Object? selectedRadioTile = 0;
  final picker = ImagePicker();
  File? imageFile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(Object? val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  chooseImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Unggah Pembayaran"),
      ),
      body: Container(
        child: ListView(
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
                    margin: EdgeInsets.fromLTRB(170, 5, 5, 5),
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
            Card(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                    child: Text(
                      "Formulir Pembayaran",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                    child: Text(
                      "Metode Pemabayaran",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: selectedRadioTile,
                    title: Text("BANK BRI"),
                    subtitle: Text("1029382131923 (DEODIA LORENSA)"),
                    onChanged: (val) {
                      print("Radio Tile Pressed $val");
                      setSelectedRadioTile(val);
                    },
                    activeColor: Colors.blue,
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedRadioTile,
                    title: Text("OVO & DANA"),
                    subtitle: Text("085612345678 (DEODIA LORENSA)"),
                    onChanged: (val) {
                      print("Radio Tile Pressed $val");
                      setSelectedRadioTile(val);
                    },
                    activeColor: Colors.blue,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
                    child: Text(
                      "Unggah Bukti Pembayaran",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 5, 5, 10),
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey[400],
                        elevation: 2.0,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Choose option',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              chooseImage(ImageSource.camera);
                                            },
                                            splashColor: Colors.black,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.camera,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  "Cemera",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              chooseImage(ImageSource.gallery);
                                            },
                                            splashColor: Colors.black,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.image,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  "Galery",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Choose File",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                color: Colors.red[400],
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Unggah",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
