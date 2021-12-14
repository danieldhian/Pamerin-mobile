import 'package:flutter/material.dart';

class diartikel extends StatelessWidget {
  const diartikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text("Detail Artikel")),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
            color: Colors.white,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage("img/artikel4.png"),
                  fit: BoxFit.contain,
                )),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Text("Melatih Seni Anak di Masa Pandemi",
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Card(
                child: Text(
                  "Pembelajaran tatap muka (PTM) di Pulau Jawa dan Bali dilarang seiring diterapkannya Pemberlakuan Pembatasan Kegiatan Masyarakat atau PPKM Darurat pada 3 hingga 20 Juli 2021 karena kasus COVID-19 yang masih tinggi. Membuat semua orang harus melakukan kegiatan sekreatif mungkin guna membunuh rasa bosan selama di rumah saja. Founder Ganara Art Studio, Tita Djumaryo, kegiatan kreatif selama masa pandemi bagus dilakukan karena dapat melatih otak, terlebih di masa-masa seperti sekarang ini, saat semua orang melakukan sebuah kegiatan secara daring atau online. Menurut Tita saat jadi pembicara di Instagram Live @hometowndiary.id belum lama ini, anak pun bisa dilatih kepekaannya melalui seni. Apa pun bentuk seninya, bernilai baik. Mau seni tarik, musik. maupun seni gambar. Bila anak di rumah terus tapi kepekaannya melalui seni tidak dilatih, mereka tidak terasah rasa, karsa, dan empatinya. 'Dan, mereka pun bisa melupakan sejenak kondisi yang terjadi saat ini,' kata Tita.",
                  style: TextStyle(fontSize: 15.0, height: 2),
                  textAlign: TextAlign.left,
                ),
              ))
        ],
      ),
    );
  }
}
