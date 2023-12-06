
import 'package:get_it/get_it.dart';

import '../../features/potato/data/datasources/user_remote_data_source.dart';
import '../../features/potato/data/repositories/potato_repertory.dart';
import '../../features/potato/domain/repositories/base_potato_repositories.dart';
import '../../features/potato/domain/usecases/list_of_item_use_case.dart';
import '../../features/potato/domain/usecases/litem_details_use_case.dart';
import '../../features/potato/domain/usecases/login_use_case.dart';
import '../../features/potato/presentation/manager/cubit/potato_cubit.dart';


final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    /// BLOC
  sl.registerFactory(() => PotatoCubit(sl(),sl(),sl() ));
    /////UseCase
    sl.registerLazySingleton(() =>LoginUseCase(sl()));
    sl.registerLazySingleton(() =>ItemDetailsUseCase(sl()));
    sl.registerLazySingleton(() =>ListItemUseCase(sl()));

     // Repository
     sl.registerLazySingleton<BasePotatoRepository>(() =>PotatoRepertory(sl()) );
    //Data Source
    sl.registerLazySingleton<BasePotatoRemoteDataSource>(() =>UserRemoteDataSource () );

  }
}