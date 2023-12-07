import 'package:dio/dio.dart';

Future<Response<dynamic>?>? apiMockService(
    String path, mockResponseBody) async {
  final dio = Dio();

  // Set up the mock response
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      // Check if the request URL matches your API endpoint
      if (options.uri.toString() == path) {
        // Create a mock response body

        // Return a mock response with status code 200 and body
        final response = Response(
            data: mockResponseBody,
            statusCode: 200,
            requestOptions: RequestOptions());

        // Resolve the response
        handler.resolve(response);
      } else {
        // If the requested URL is not the mock URL, make a real network request
        handler.next(options);
      }
    },
  ));

  try {
    // Make a GET request to your API endpoint
    final response = await dio.get(path);
    print('klklklk');
    print(response.data);
    return response;
    // Print the response body
  } catch (e) {
    // Handle any errors
    print('Error: $e');
  }
  return null;
}
