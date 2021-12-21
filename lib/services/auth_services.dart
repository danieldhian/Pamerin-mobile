import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:pamerin/common/constants.dart';
import 'package:pamerin/common/helpers.dart';
import 'package:pamerin/model/user.dart';
import 'package:pamerin/services/api_response.dart';

class AuthServices {
  AuthServices._();

  static Future<ApiResponse<User>> getUser(String accessToken) async {
    final response = await http.get(
      apiURL.resolve('user'),
      headers: await Helper.headerToken(),
    );

    try {
      if (response.statusCode == HttpStatus.ok) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        return ApiResponse<User>(true, data: User.fromJson(json));
      } else {
        return ApiResponse(false, message: defaultErrorText);
      }
    } catch ($e) {
      return ApiResponse(false, message: defaultErrorText);
    }
  }

  static Future<ApiResponse<String>> signUp(String name, String email, String password) async{
    final response = await http.post(
      apiURL.resolve('register'),
      headers: acceptJson,
      body: { 'name': name, 'email': email, 'password': password },
    );
    try{
      if(response.statusCode == HttpStatus.ok){
        final Map<String, dynamic> json = jsonDecode(response.body);

        return ApiResponse<String>(true, data: json['access_token']);
      }else{
        print(json);
        return ApiResponse<String>(false, message: "tidak bisa daftar");
      }
    }catch($e){
      return ApiResponse(false, message: defaultErrorText);
    }
  }

  static Future<ApiResponse<String>> signIn(String email, String password) async {
    final response = await http.post(
      apiURL.resolve('login'),
      headers: acceptJson,
      body: {'email': email, 'password': password},
    );

    try {
      if (response.statusCode == HttpStatus.ok) {
        final Map<String, dynamic> json = jsonDecode(response.body);

        return ApiResponse<String>(true, data: json['access_token']);
      } else if (response.statusCode == HttpStatus.unauthorized) {
        return ApiResponse(false, message: "Email atau kata sandi salah");
      } else {
        return ApiResponse(false, message: defaultErrorText);
      }
    } catch ($e) {
      return ApiResponse(false, message: defaultErrorText);
    }
  }

  static Future signOut() async {
    await http.get(
      apiURL.resolve('logout'),
      headers: await Helper.headerToken(),
    );

    return ApiResponse(true);
  }

  
}
