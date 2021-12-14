import 'package:flutter/material.dart';
import 'package:pamerin/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();
  bool showPassword = false;
  bool showPassword1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "PamerIn",
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.amber,
        ),
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0, 140.0, 0.0, 0.0),
                        child: Text(
                          "Satu langkah menuju pameran virtual!",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Nama lengkap",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "No. Handphone",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
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
                            labelText: "Kata sandi",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
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
                            labelText: "Ulangi kata sandi",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
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
                          color: Colors.amber[600],
                          elevation: 7.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Loginpage();
                              }));
                            },
                            child: Center(
                              child: Text("Daftar",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Sudah punya akun?"),
                          SizedBox(
                            width: 5.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Loginpage();
                              }));
                            },
                            child: Text(
                              "Masuk",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
