import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'scan.dart' as scan;
import 'profile.dart' as profile;
import 'hal_utama.dart' as utama;

class beranda extends StatefulWidget {
  const beranda({ Key? key }) : super(key: key);

  @override
  _berandaState createState() => _berandaState();
}

class _berandaState extends State<beranda> with SingleTickerProviderStateMixin {
  
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
        body: TabBarView(
        controller: controller,
        children: <Widget>[
          utama.hal_utama(),
          scan.scan(),
          profile.profile(),
        ],
        ),
        bottomNavigationBar: Material(
          color: Colors.amber,
          child: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.document_scanner_outlined),),
              Tab(icon: Icon(Icons.account_circle_outlined),),
            ],
          ),
        ),
      );
  }
}
