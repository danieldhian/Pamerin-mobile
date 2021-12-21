import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pamerin/login_page.dart';
import 'package:pamerin/services/api_response.dart';
import 'package:pamerin/services/auth_services.dart';

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

  String phone = "";
  String name = "";
  String email = "";
  String password = "";
  bool isLoading = true;

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
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Nama lengkap",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                                )
                                ),
                                validator : (value) {
                            if (value == null || value.isEmpty){
                              return 'kolom nama wajib di isi';
                            }
                            return null;
                          },
                      onChanged: (value){
                        setState(() {
                          email = value;
                        });
                      },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                                validator : (value) {
                            if (value == null || value.isEmpty){
                              return 'kolom email wajib di isi';
                            }
                            return null;
                          },
                                
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "No. Handphone",
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                                validator : (value) {
                            if (value == null || value.isEmpty){
                              return 'kolom nomor handphone wajib di isi';
                            }
                            return null;
                          },
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
                                validator : (value){
                        if (value == null || value.isEmpty){
                          return 'Kolom kata sandi wajib di isi';
                        } else if (value.length < 6){
                          return 'Panjang kata sandi minimal 6 karakter';
                        }
                        return null;
                      },
                      onChanged: (value){
                        setState(() {
                          password = value;
                        });
                      },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
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
                                validator : (value){
                        if (value == null || value.isEmpty){
                          return 'Kolom kata sandi wajib di isi';
                        } else if (value.length < 6){
                          return 'Panjang kata sandi minimal 6 karakter';
                        }
                        return null;
                      },
                      onChanged: (value){
                        setState(() {
                          password = value;
                        });
                      },
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
                              if (email != "" &&
                                  password != "" &&
                                  phone != "" &&
                                  name != "") {
                                showLoaderDialog(context);
                                register(email, password, phone, name)
                                    .then((value) {
                                  if (value == true) {
                                    // Navigator.pop(context);
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Loginpage();
                                    }));
                                    Fluttertoast.showToast(
                                        msg: "Berhasil daftar");
                                  } else {
                                    // Navigator.pop(context);
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                    ;
                                    Fluttertoast.showToast(
                                        msg: "Email atau password salah.");
                                  }
                                });
                              }
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

Future<bool> register(email, password, phone, name) async {
  ApiResponse response =
      await AuthServices.signUp(email, password, phone, name);
  if (response.status == true) {
    return true;
  }
  return false;
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: new Row(
      children: [
        CircularProgressIndicator(),
        Container(margin: EdgeInsets.only(left: 7), child: Text("Proses...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
