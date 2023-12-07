import 'dart:convert';

import 'package:http/http.dart' as http;

class AppApi {
  Future<Map<String, dynamic>> post(
      String url, Map<String, dynamic> data) async {
    var response = await http.post(Uri.parse(url), body: data);
    Map<String, dynamic> dataJson = jsonDecode(response.body);
    return dataJson;
  }
  Future<Map<String, dynamic>> get(url) async {
    var response = await http.get(Uri.parse(url));
    Map<String, dynamic> dataJson = jsonDecode(response.body);
    return dataJson;
  }
}
