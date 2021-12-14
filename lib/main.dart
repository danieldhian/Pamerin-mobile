import 'package:flutter/material.dart';
import 'package:pamerin/login_page.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
    title: "PamerIn",
  ));
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginpage(),
    );
  }
}