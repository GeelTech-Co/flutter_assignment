import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/authentication/login/data/database/authentication_remote_database.dart';
import '../../features/authentication/login/data/repositories/authentication_remote_repository_impl.dart';
import '../../features/authentication/login/domain/repositories/login_remote_repository.dart';
import '../../features/authentication/login/domain/usecases/login.dart';
import '../../features/item/data/database/item_remote_database.dart';
import '../../features/item/data/repositories/item_remote_repository_impl.dart';
import '../../features/item/domain/repositories/item_remote_repository.dart';
import '../../features/item/domain/usecases/item.dart';
import '../helper/app_prefs.dart';
import '../networking/app_service_client/app_service_client.dart';
import '../networking/app_service_client/dio_factory.dart';
import '../networking/app_service_client/network_info.dart';

final getIt = GetIt.instance;

// we put all our dependency injection in this function
Future<void> setupGetIt() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<AppPreferences>(
      () => AppPreferences(sharedPreferences: getIt()));

  getIt.registerLazySingleton<NetworkInfo>(() =>
      NetworkInfoImpl(internetConnectionChecker: InternetConnectionChecker()));

  getIt.registerLazySingleton<DioFactory>(
      () => DioFactory(appPreferences: getIt()));

  Dio dio = await getIt<DioFactory>().getDio();

  getIt.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  getIt.registerLazySingleton<AuthenticationRemoteDatabase>(
      () => AuthenticationRemoteDatabaseImpl(appServiceClient: getIt()));

  getIt.registerLazySingleton<AuthenticationRemoteRepository>(
      () => AuthenticationRemoteRepositoryImpl(
            networkInfo: getIt(),
            authenticationRemoteDataSource: getIt(),
          ));

  getIt.registerLazySingleton<ItemRemoteDatabase>(
          () => ItemRemoteDatabaseImpl(appServiceClient: getIt()));

  getIt.registerLazySingleton<ItemRemoteRepository>(
          () => ItemRemoteRepositoryImpl(
        networkInfo: getIt(),
            itemRemoteDataSource: getIt(),
      ));
}

Future<void> initLoginModule() async {
  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    getIt.registerFactory<LoginUseCase>(
        () => LoginUseCase(authenticationRemoteRepository: getIt()));
  }
}

Future<void> initGetItemModule() async {
  if (!GetIt.I.isRegistered<ItemUseCase>()) {
    getIt.registerFactory<ItemUseCase>(
        () => ItemUseCase(itemRemoteRepository: getIt()));
  }
}



// Future<void> initTodoAddModule() async {
//   if (!GetIt.I.isRegistered<AddTodoUseCase>()) {
//     getIt.registerFactory<AddTodoUseCase>(
//         () => AddTodoUseCase(repository: getIt()));

//     getIt.registerFactory<TodoAddCubit>(
//         () => TodoAddCubit(addTodoUseCase: getIt()));
//   }
// }

// Future<void> initTodoEditModule() async {
//   if (!GetIt.I.isRegistered<EditTodoUseCase>()) {
//     getIt.registerFactory<EditTodoUseCase>(
//         () => EditTodoUseCase(repository: getIt()));

//     getIt.registerFactory<TodoEditCubit>(
//         () => TodoEditCubit(editTodoUseCase: getIt()));
//   }
// }

// Future<void> initTodoDeleteModule() async {
//   if (!GetIt.I.isRegistered<DeleteTodoUseCase>()) {
//     getIt.registerFactory<DeleteTodoUseCase>(
//         () => DeleteTodoUseCase(repository: getIt()));

//     getIt.registerFactory<TodoDeleteCubit>(
//         () => TodoDeleteCubit(deleteTodoUseCase: getIt()));
//   }
// }
