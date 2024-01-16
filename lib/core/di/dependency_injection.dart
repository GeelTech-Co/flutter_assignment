import 'package:assignment_test/features/fix/logic/fix_bloc.dart';
import 'package:assignment_test/features/item/data/repo/item_repo.dart';
import 'package:assignment_test/features/item/logic/item_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/logic/login_bloc.dart';
import '../network/api_service.dart';
import '../network/dio_factory.dart';
import '../network/token_interceptor.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// Dio & ApiService
  Dio dio = await DioFactory.getDio();
  dio.interceptors.add(TokenInterceptor());
  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));

  /// fix
  getIt.registerFactory<FixBloc>(() => FixBloc());

  /// items
  getIt.registerLazySingleton<ItemRepo>(() => ItemRepo(getIt()));
  getIt.registerFactory<ItemBloc>(() => ItemBloc(getIt()));


}
