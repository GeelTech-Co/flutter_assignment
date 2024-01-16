import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers = {
        'Content-Type':'application/json',
      };

      /// This code to access server not certificate
      (dio!.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient dioClient) {
            dioClient.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
            return dioClient;
          };
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        error: true,
        request: true,
        responseBody: true
      ),
    );
  }
}