import 'package:assignment_test/core/apis/end_points.dart';
import 'package:assignment_test/core/error/failures.dart';
import 'package:assignment_test/core/network/mock_api.dart';
import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/core/utils/constants.dart';
import 'package:assignment_test/features/homeLayOut/data/models/item.dart';
import 'package:assignment_test/features/homeLayOut/data/models/items_data.dart';
import 'package:assignment_test/features/homeLayOut/data/models/login.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class InternetConnectivity {
  static Future<bool> checkConnectivity() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}

class ApiService {
  final Dio dio = Dio();
  Future<Either<Failures, Item>> getItem(int id) async {
    bool res = await InternetConnectivity.checkConnectivity();
    if (!res) {
      return left(const ServerFailure(message: AppStrings.noInternet));
    }
    var url = '${Constants.baseUrl}${EndPoints.item}$id';

    try {
      var response = await apiMockService(
        url,
        Constants.itemDetails.firstWhere((element) => element['id'] == id),
      );
      if (response?.statusCode == 200) {
        Item item = Item.fromJson(response?.data);

        return right(item);
      } else {
        return left(ServerFailure(code: response?.statusCode ?? 0));
      }
    } catch (e) {
      return left(ServerFailure(code: e.hashCode));
    }
  }

  Future<Either<Failures, String>> logIn(String name, String password) async {
    bool res = await InternetConnectivity.checkConnectivity();
    if (!res) {
      return left(const ServerFailure(message: AppStrings.noInternet));
    }
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

  Future<Either<Failures, List<ItemsData>>> getItems() async {
    bool res = await InternetConnectivity.checkConnectivity();
    if (!res) {
      return left(const ServerFailure(message: AppStrings.noInternet));
    }
    try {
      var url = Constants.baseUrl + EndPoints.items;
      var response = await apiMockService(
        url,
        Constants.itemsList,
      );

      if (response?.statusCode == 200) {
        List<ItemsData> items = [];

        if (response?.data is List && response?.data.length > 0) {
          for (var itemData in response?.data) {
            ItemsData item = ItemsData.fromJson(itemData);
            items.add(item);
          }
        } else {
          throw const ServerFailure(message: 'Invalid items data');
        }

        return right(items);
      } else {
        return left(ServerFailure(code: response?.statusCode ?? 0));
      }
    } catch (e) {
      return left(ServerFailure(code: e.hashCode));
    }
  }
}
