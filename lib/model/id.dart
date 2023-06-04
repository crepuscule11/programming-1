import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../expirement/Categories_home.dart';
import 'package:get/get_connect/http/src/response/response.dart' as GetResponse;

class ApiHelper {
  static String globalResponse = "";

  static Future<bool> login(String email, String password, String data) async {
    try {
      Map<String, String> headers = {'Content-Type': 'application/json'};
      final msg =
          jsonEncode({'email': email, 'password': password, 'data': data});

      Response response = await post(
          Uri.parse('https://gorder.website/API/login.php'),
          headers: headers,
          body: msg);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
