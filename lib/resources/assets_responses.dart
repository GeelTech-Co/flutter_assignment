import 'dart:convert';

import 'package:flutter/services.dart';

class AssetsFile {
  static final AssetsFile _instance = AssetsFile._internal();

  AssetsFile._internal();

  static AssetsFile get instance => _instance;

  late Map<String, dynamic> _jsonRes;

  Map<String, dynamic> get jsonRes => _jsonRes;

  factory AssetsFile() {
    return _instance;
  }

  Future getAssets() async {
    final String res = await rootBundle.loadString('assets/response.json');
    _jsonRes = await jsonDecode(res);
  }
}
