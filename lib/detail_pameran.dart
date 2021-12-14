import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pamerin/konfirmasi.dart';


class detail_pameran extends StatelessWidget {
  const detail_pameran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("Kahuripan Exhibition"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage("img/detpameran1.png"),
                    fit: BoxFit.contain,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Text("Kahuripan Exhibition",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 5, 5),
                  child: Icon(Icons.calendar_today_outlined)),
              Text("Selasa, 14 September 2021"),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 5, 5),
                  child: Icon(Icons.access_time)),
              Text("13.00 - 19.00 WIB"),
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 5, 5, 10),
              child: Text("Rp 50.000",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold))),
          Card(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                "Kahuripan Exhibition adalah pameran ke-2 Mahera Lim yang merupakan seniman Korea-Indonesia yang sedang naik daun. Pada pameran kali ini, karya seni yang dipamerkan merupakan hasil ia berkarya selama satu tahun belakang.",
                style: TextStyle(fontSize: 15.0, height: 2),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 5, 5, 5),
              child: Text("Tetang Seniman",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 5, 5),
                  child: Icon(Icons.account_circle_outlined)),
              Text("Mahera Lim, Kalimantan Utara"),
            ],
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.48,
                padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage("img/port1.png"),
                      fit: BoxFit.contain,
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.48,
                padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: AssetImage("img/port2.png"),
                      fit: BoxFit.contain,
                    )),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
                color: Colors.red[400],
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return konfirmasi();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Pesan Sekarang",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
