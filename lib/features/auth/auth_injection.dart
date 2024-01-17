import 'package:get_it/get_it.dart';
import 'package:assignment_test/features/auth/domain/repositories/auth_repo.dart';
import 'package:assignment_test/features/auth/domain/usecases/sing_in_usecase.dart';
import 'package:assignment_test/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:assignment_test/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:assignment_test/features/auth/domain/usecases/sing_out_usecase.dart';
import 'package:assignment_test/features/auth/presentation/providers/auth_provider.dart';
import 'package:assignment_test/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:assignment_test/features/auth/data/datasources/auth_remote_data_source.dart';

Future<void> authenticationInit(GetIt sl) async {
  // Providers
  sl.registerLazySingleton<AuthProvider>(() => AuthProvider(
        singInUseCase: sl(),
        singOutUseCase: sl(),
        getUserDataUseCase: sl(),
      ));

  // Usecases
  sl.registerLazySingleton<SingInUseCase>(() => SingInUseCase(sl()));
  sl.registerLazySingleton<SingOutUseCase>(() => SingOutUseCase(sl()));
  sl.registerLazySingleton<GetUserDataUseCase>(() => GetUserDataUseCase(sl()));

  // Repositories

  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
            authenticationLocalDataSource: sl(),
            authenticationRemoteDataSource: sl(),
          ));

  // Data Sources
  sl.registerLazySingleton<AuthenticationRemoteDataSource>(
      () => AuthenticationRemoteDataSourceImpl(sl()));

  sl.registerLazySingleton<AuthenticationLocalDataSource>(
      () => AuthenticationLocalDataSourceImpl());
}
