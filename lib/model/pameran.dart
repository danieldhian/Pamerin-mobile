import 'package:flutter/material.dart';

class Pameran{
  int id;
  int user_id;
  String nama;
  String slug;
  String date;
  // DateTime start;
  // DateTime end;
  String price;
  String description;
  String thumbnail;
  
  Pameran({
    required this.id,required this.user_id,required this.nama,required this.slug,required this.date, required this.price , required this.description ,required this.thumbnail
  });

  factory Pameran.fromJson(Map<String,dynamic> json){
    return Pameran(id: json['id'],user_id: json['user_id'] ,nama: json['name'], slug: json['slug'],date: json['date'] ,price: json['price'],description: json['description'] ,thumbnail: json['thumbnail']);
  }
}