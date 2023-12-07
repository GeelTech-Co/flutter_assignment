import 'package:dio/dio.dart';

Future<Response<dynamic>?>? apiMockService(
    String path, mockResponseBody) async {
  final dio = Dio();

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      if (options.uri.toString() == path) {
        final response = Response(
            data: mockResponseBody,
            statusCode: 200,
            requestOptions: RequestOptions());

        handler.resolve(response);
      } else {
        handler.next(options);
      }
    },
  ));

  try {
    final response = await dio.get(path);

    return response;
  } catch (e) {
    print('Error: $e');
  }
  return null;
}
