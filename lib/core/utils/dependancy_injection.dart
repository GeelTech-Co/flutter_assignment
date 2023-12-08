import 'package:assignment_test/features/items/data/data_source/remote_data_source.dart';
import 'package:assignment_test/features/items/data/repository/repository.dart';
import 'package:assignment_test/features/items/domain/repository/items_repository.dart';
import 'package:assignment_test/features/items/domain/use_cases/item_details_use_case.dart';
import 'package:assignment_test/features/items/domain/use_cases/items_use_case.dart';
import 'package:assignment_test/features/items/presentation/controllers/get_item_details_cubit/get_item_details_cubit.dart';
import 'package:assignment_test/features/items/presentation/controllers/get_items_cubit/get_items_cubit.dart';
import 'package:assignment_test/features/login/data/data_source/remote_data_source.dart';
import 'package:assignment_test/features/login/data/repository/login_repository.dart';
import 'package:assignment_test/features/login/domain/repository/repository.dart';
import 'package:assignment_test/features/login/domain/use_cases/login_use_case.dart';
import 'package:assignment_test/features/login/presentation/controller/login_cubit.dart';
import 'package:get_it/get_it.dart';

import 'api_services.dart';

final getItInstance = GetIt.instance;

Future<void> initAppModule() async{


  // api service
  getItInstance.registerLazySingleton<ApiServices>(() => ApiServices());

  // remote data source
  getItInstance.registerLazySingleton<LoginRemoteDataSource>(() => LoginRemoteDataSourceImp(getItInstance()));

  getItInstance.registerLazySingleton<ItemsRemoteDataSource>(() => ItemsRemoteDataSourceImp(apiServices: getItInstance()));

  // repository
  getItInstance.registerLazySingleton<LoginRepository>(() => LoginRepositoryImp(loginRemoteDataSource: getItInstance()));

  getItInstance.registerLazySingleton<ItemsRepository>(() => ItemsRepositoryImp(itemsRemoteDataSource: getItInstance()));

  // use case
  getItInstance.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getItInstance()));

  getItInstance.registerLazySingleton<ItemsUseCase>(() => ItemsUseCase(itemsRepository: getItInstance(),));

  getItInstance.registerLazySingleton<ItemDetailsUseCase>(() => ItemDetailsUseCase(itemsRepository: getItInstance(),));


  // cubit
  getItInstance.registerLazySingleton(() => LoginCubit(getItInstance()));

  getItInstance.registerLazySingleton(() => GetItemsCubit(getItInstance()));

  getItInstance.registerLazySingleton(() => GetItemDetailsCubit(getItInstance()));


}