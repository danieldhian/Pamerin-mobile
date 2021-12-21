import 'dart:convert';
// import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:pamerin/artikel.dart';
import 'package:pamerin/model/artikel.dart';

class httpartikel {
  // String? id, title, text, thumbnail;

  // httpartikel ({this.id,this.title,this.text,this.thumbnail});

  Future<List<Artikel>> connectAPI() async {
    Uri url = Uri.parse("http://www.pamerin.xyz/public/api/article");

    var hasilartikel = await http.get(url);

    Map<String, dynamic> data = jsonDecode(hasilartikel.body);
    List<Artikel> artikellist = List.empty(growable: true);
    var datalist = data['body'] as List;
    datalist.forEach((element) {
      Map<String, dynamic> elemenjson = element;
      artikellist.add(Artikel.fromJson(elemenjson));
    });

    print(data);
    return Future.value(artikellist);
  }
}
