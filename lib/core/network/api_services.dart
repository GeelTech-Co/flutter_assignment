import 'package:assignment_test/core/apis/end_points.dart';
import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/utils/constants.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:assignment_test/features/homeLayOut/data/models/logi.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Connectivity {
  static Future<Either<Failures, bool>> checkConnectivity() async {
    final connectivityResult = await (Connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return left(ServerFailure(message: 'no Internet connection'));
    } else {
      return right(true);
    }
  }
}

class ApiService {
  static final Dio dio = Dio();

  static Future<Either<Failures, Item>> getItem(int id) async {
    var url = '${Constants.baseUrl}${EndPoints.item}$id';

    try {
      var response = await dio.get(url);

      if (response.statusCode == 200) {
        Item item = Item.fromJson(response.data[0]);

        return right(item);
      } else {
        return left(ServerFailure(code: response.statusCode ?? 0));
      }
    } catch (e) {
      return left(ServerFailure(code: e.hashCode));
    }
  }

  static Future<Either<Failures, String>> logIn(
      String name, String password) async {
    var url = Constants.baseUrl + EndPoints.logIn;

    var body = {
      'username': name,
      'password': password,
    };

    try {
      var response = await dio.post(url, data: body);

      if (response.statusCode == 200) {
        LogIn logIn = LogIn.fromJson(response.data[0]);
        return right('Response body: ${logIn.message}');
      } else {
        return left(ServerFailure(code: response.statusCode ?? 0));
      }
    } catch (e) {
      return left(ServerFailure(code: e.hashCode));
    }
  }

  static Future<Either<Failures, List<ItemsData>>> getItems() async {
    try {
      var url = Constants.baseUrl + EndPoints.items;
      var response = await dio.get(url);

      if (response.statusCode == 200) {
        List<ItemsData> items = [];

        if (response.data is List && response.data.length > 0) {
          for (var itemData in response.data) {
            ItemsData item = ItemsData.fromJson(itemData);
            items.add(item);
          }
        } else {
          throw ServerFailure(message: 'Invalid items data');
        }

        return right(items);
      } else {
        return left(ServerFailure(code: response.statusCode ?? 0));
      }
    } catch (e) {
      return left(ServerFailure(code: e.hashCode));
    }
  }
}
