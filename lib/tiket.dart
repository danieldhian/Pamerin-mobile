import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'menunggu.dart' as menunggu;
import 'akan_datang.dart' as datang;
import 'selesai.dart' as selesai;

class tiket extends StatefulWidget {
  const tiket({Key? key}) : super(key: key);

  @override
  _tiketState createState() => _tiketState();
}

class _tiketState extends State<tiket> with SingleTickerProviderStateMixin{

late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this,length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Tiket Saya"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: "menunggu pembayaran",),
            Tab(text: "akan datang",),
            Tab(text: "selesai",),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          menunggu.menunggu(),
          datang.akan_datang(),
          selesai.selesai()
        ],
        ),


    );
  }
}
