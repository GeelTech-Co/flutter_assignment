import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/utils/constants.dart';
import 'package:assignment_test/features/homeLayOut/data/datasources/data_source.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:assignment_test/features/homeLayOut/data/models/logi.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class RemoteDto extends DataSource {
  @override
  Future<Either<Failures, String>> logIn(String name, String password) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return left(ServerFailure(message: 0, noInternet: 'no internet'));
    }
    var url = '${Constants.baseUrl}login';

    var body = {
      'username': name,
      'password': password,
    };

    var dio = Dio();

    try {
      var response = await dio.post(url, data: body);

      if (response.statusCode == 200) {
        LogIn logIn = LogIn.fromJson(response.data[0]);
        return right('Response body: ${logIn.message}');
      } else {
        return left(ServerFailure(message: response.statusCode ?? 0));
      }
    } catch (e) {
      return left(ServerFailure(message: e.hashCode));
    }
  }

  @override
  Future<Either<Failures, List<ItemsData>>> getItems() async {
    var url = '${Constants.baseUrl}items';

    // Create Dio instance
    var dio = Dio();

    try {
      // Send GET request
      var response = await dio.get(url);

      // Check the response status code
      if (response.statusCode == 200) {
        List<ItemsData> items = [];
        for (var element in response.data) {
          ItemsData item = ItemsData.fromJson(element);
          items.add(item);
        }
        return right(items);
      } else {
        // Request failed
        return left(ServerFailure(message: response.statusCode ?? 0));
      }
    } catch (e) {
      // Handle any exceptions
      return left(ServerFailure(message: e.hashCode));
    }
  }

  @override
  Future<Either<Failures, Item>> getItem(String id) async {
    var url = '${Constants.baseUrl}item?id=$id';

    // Create Dio instance
    var dio = Dio();

    try {
      // Send GET request
      var response = await dio.get(url);

      // Check the response status code
      if (response.statusCode == 200) {
        Item item = Item.fromJson(response.data[0]);

        return right(item);
      } else {
        // Request failed
        return left(ServerFailure(message: response.statusCode ?? 0));
      }
    } catch (e) {
      // Handle any exceptions
      return left(ServerFailure(message: e.hashCode));
    }
  }
}
