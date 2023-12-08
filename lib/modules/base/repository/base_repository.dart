import 'package:assignment_test/helpers/service_locator.dart';
import 'package:assignment_test/network/dio_factory.dart';
import 'package:assignment_test/network/network_info.dart';

abstract class BaseRepository{
  late NetworkInfo networkInfo;
  late DioFactory dio;

  BaseRepository(){
    networkInfo=getIt.get<NetworkInfo>();
    dio=getIt.get<DioFactory>();
  }
}