import 'dart:convert';
import 'dart:js';


import 'package:flutter/material.dart';
import 'package:pamerin/detail_artikel.dart';
import 'package:http/http.dart' as http;

class artikel extends StatelessWidget {
  const artikel({Key? key}) : super(key: key);

  // final String url = 'http://127.0.0.1:8000/api/article';
  // Future getArtikel() async {
  //   var response = await http.get(Uri.parse(url));
  //   print(jsonDecode(response.body));
  //   return jsonDecode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Artikel")),
      ),
      // body: 
      // FutureBuilder(
      //   future: getArtikel(),
      //   builder: (context, articles) {
      //     if(articles.hasData){
      //       return Text("data OKE");
      //     }else{
      //       return Text(" data Eror");
      //     }
      //   },
      //   ),
      body:
      ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  elevation: 7.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return diartikel();
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage("img/artikel1.png"),
                                fit: BoxFit.contain,
                              )),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                            child: Text(
                              "Melatih Seni Anak di Masa\nPandemi",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 child: Material(
                   borderRadius: BorderRadius.circular(20.0),
                   color: Colors.white,
                   elevation: 7.0,
                   child: Row(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.all(10),
                         child: ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image(
                               image: AssetImage("img/artikel2.png"),
                               fit: BoxFit.contain,
                             )),
                       ),
                       Container(
                           alignment: Alignment.centerLeft,
                           padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                           child: Text(
                             "Wanita Ubah Kardus Jadi\nKarya Seni Mengagumkan",
                             style: TextStyle(
                                 fontSize: 13.0,
                                 color: Colors.black,
                                 fontWeight: FontWeight.w700),
                           )),
                     ],
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 child: Material(
                   borderRadius: BorderRadius.circular(20.0),
                   color: Colors.white,
                   elevation: 7.0,
                   child: Row(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.all(10),
                         child: ClipRRect(
                             borderRadius: BorderRadius.circular(10.0),
                             child: Image(
                               image: AssetImage("img/artikel3.png"),
                               fit: BoxFit.contain,
                             )),
                       ),
                       Container(
                           alignment: Alignment.centerLeft,
                           padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                           child: Text(
                             "Aturan Pelaksanaan\nKegiatan Seni Saat PPKM",
                             style: TextStyle(
                                 fontSize: 13.0,
                                 color: Colors.black,
                                 fontWeight: FontWeight.w700),
                           )),
                     ],
                   ),
                 ),
               ),
            ],
          )
        ],
      )
    );
  }
}
