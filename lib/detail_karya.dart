// import 'dart:convert';
// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:pamerin/model_karya.dart';

// class detail_karya extends StatefulWidget {
//   const detail_karya({ Key? key }) : super(key: key);
//   final String code;
//   detail_karya(this.code)
//   @override
//   _detail_karyaState createState() => _detail_karyaState();
// }

// class _detail_karyaState extends State<detail_karya> {
//   Karya karya;
//   Future<Karya> getproduk()async{
//     await http.get("http://192.168.100.9/tokoAPI/gerproduk.php?kode=${widget.code}")
//     .then((response) {
//       if(jsonDecode(response.body)!=null){
//         karya=Karya.fromJson(jsonDecode(response.body));
//       }
//     });
//     return karya;
//   } 

//   @override
//     Void initState()
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//     );
//   }
// }