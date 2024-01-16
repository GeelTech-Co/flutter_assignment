import 'package:assignment_test/data/model/result_api.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

mixin ApiConfiguration {
  Future<bool> _checkConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  Future<ResultApi> baseRequest(
      {required Future<ResultApi> Function() method}) async {
    if (await _checkConnection()) {
      try {
        return await method.call();
      } catch (e) {
        return ResultApi(isDone: false, massage: e.toString());
      }
    } else {
      return ResultApi(isDone: false, massage: 'No internet connection');
    }
  }
}
