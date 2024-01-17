import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:assignment_test/features/auth/auth_injection.dart';
import 'package:assignment_test/core/helpers/api/api_consumer.dart';
import 'package:assignment_test/core/helpers/api/dio_consumer.dart';
import 'package:assignment_test/features/product/product_injection.dart';
import 'package:assignment_test/core/helpers/api/app_interceptors.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features
  await productInit(sl);
  await authenticationInit(sl);

  // External
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
}
