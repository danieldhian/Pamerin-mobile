import 'dart:io';

final String defaultErrorText = "Terjadi kesalahan. Coba lagi nanti";

/* URI */
Uri apiURL = Uri.parse("http://www.pamerin.xyz/public/api/");
String assetURL = "http://www.pamerin.xyz/public/";
Map<String, String> acceptJson = {HttpHeaders.acceptHeader: "application/json"};