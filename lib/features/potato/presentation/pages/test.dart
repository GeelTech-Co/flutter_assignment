
import 'dart:convert';

import 'package:dio/dio.dart';

class ApiService {
  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await Dio().post(
      'https://example.com/login',
      
      data: jsonEncode({"username": username, "password": password}) ,
    
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      throw Exception('Failed to login');
    }
  }
}