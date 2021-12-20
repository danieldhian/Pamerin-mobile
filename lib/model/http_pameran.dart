import 'dart:convert';
// import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:pamerin/model/pameran.dart';

class httppameran {
  
  Future <List<Pameran>> pameranapi() async{
    Uri url = Uri.parse("http://10.0.2.2:8000/api/exhibitions");
    
    var hasilpameran = await http.get(url);

    Map<String,dynamic> data = jsonDecode(hasilpameran.body);
    List<Pameran> pameranlist = List.empty(growable: true);
    var datalist = data['body'] as List;
    datalist.forEach((element) {
      Map<String, dynamic> elemenjson = element;
      pameranlist.add(Pameran.fromJson(elemenjson));
    });

    print(data);
    return Future.value(pameranlist);
  }
}