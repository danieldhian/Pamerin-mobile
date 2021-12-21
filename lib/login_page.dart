import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pamerin/register_page.dart';
import 'package:pamerin/beranda.dart';

final _formkey = GlobalKey<FormState>();

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final passwordController = TextEditingController();
  bool showPassword = false;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    "Masuk",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 160.0, 0.0, 0.0),
                  child: Text(
                    "Selamat datang, kami menunggumu",
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
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Mauskkan email anda",
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                          )
                          ),
                          validator : (value) {
                            if (value == null || value.isEmpty){
                              return 'kolom username wajib di isi';
                            }
                            return null;
                          }
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        child: Icon(showPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
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
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                          validator : (value){
                            if (value == null || value.isEmpty){
                              return 'Kolom kata sandi wajib di isi';
                            } else if (value.length < 6){
                              return 'Panjang kata sandi minimal 6 karakter';
                            }
                            return null;
                          }
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
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return beranda();
                        }));
                      },
                      child: Center(
                        child: Text("Masuk",
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
                    Text("Belum punya akun?"),
                    SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegisterPage();
                        }));
                      },
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blue[900],
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
