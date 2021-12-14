import 'package:flutter/material.dart';
import 'package:pamerin/profile.dart';

class SandiPage extends StatefulWidget {
  const SandiPage({Key? key}) : super(key: key);

  @override
  State<SandiPage> createState() => _SandiPageState();
}

class _SandiPageState extends State<SandiPage> {
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();
  bool showPassword = false;
  bool showPassword1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Ubah Kata Sandi"),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: passwordController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        child: Icon(showPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onTap: () {
                          if (showPassword) {
                            setState(() {
                              showPassword = false;
                            });
                          } else {
                            setState(() {
                              showPassword = true;
                            });
                          }
                        },
                      ),
                      labelText: "Kata sandi baru",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: passwordController1,
                  obscureText: showPassword1,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        child: Icon(showPassword1
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onTap: () {
                          if (showPassword1) {
                            setState(() {
                              showPassword1 = false;
                            });
                          } else {
                            setState(() {
                              showPassword1 = true;
                            });
                          }
                        },
                      ),
                      labelText: "Ulangi kata sandi baru",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red[400],
                    elevation: 7.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return profile();
                        }));
                      },
                      child: Center(
                        child: Text(
                          "Simpan perubahan",
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
