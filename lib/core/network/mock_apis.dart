import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'api_constance.dart';

class MockApI {
  static final dio = Dio(BaseOptions());
  static final dioAdapter = DioAdapter(dio: dio);
  static Future<Response> getData(
      {required String url, required Map<String, dynamic> data}) async {
    dioAdapter.onGet(
      url,
      (server) => server.reply(
        200,
        data,
        delay: const Duration(seconds: 2),
      ),
    );
    final response = await dio.get(url);
    return response;
  }

  static Future<Response> getPost({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    dioAdapter.onPost(
      url,
      (server) => server.reply(
        200,
        data,
        delay: const Duration(seconds: 1),
      ),
      data: data,
    );

    final response = await dio.post(
      url,
      data: data,
    );

    return response;
  }
}
