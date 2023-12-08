import 'package:assignment_test/modules/items/repository/items_repository.dart';
import 'package:assignment_test/modules/login/repository/login_repository.dart';
import 'package:assignment_test/network/network_info.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


import '../network/dio_factory.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() async {
    ///Dio Factory
    getIt.registerLazySingleton<DioFactory>(() => DioFactory());

    /// Network info
    getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(getIt()));

    /// Network Connection checker
    getIt.registerLazySingleton<InternetConnectionChecker>(
            () => InternetConnectionChecker());

    /// Login Repository
    getIt.registerLazySingleton<LoginRepository>(() => LoginRepository());
    getIt.registerLazySingleton<ItemsRepository>(() => ItemsRepository());



  }
}
