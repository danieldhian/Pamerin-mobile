import 'package:flutter/material.dart';
import 'package:pamerin/login_page.dart';
import 'package:pamerin/lupa_sandi_page.dart';
import 'package:pamerin/pribadi.dart';
import 'package:pamerin/tiket.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Akun Saya"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    elevation: 2.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return pribadi();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Informasi Pribadi",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    elevation: 2.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SandiPage();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Ubah Kata Sandi",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    elevation: 2.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return tiket();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiekt Saya",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    elevation: 2.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Loginpage();
                        }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Keluar",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
