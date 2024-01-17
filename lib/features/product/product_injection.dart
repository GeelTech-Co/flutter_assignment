import 'package:get_it/get_it.dart';
import 'package:assignment_test/features/product/domain/repositories/product_repo.dart';
import 'package:assignment_test/features/product/domain/usecases/get_product_usecase.dart';
import 'package:assignment_test/features/product/data/repositories/product_repo_impl.dart';
import 'package:assignment_test/features/product/domain/usecases/get_products_usecase.dart';
import 'package:assignment_test/features/product/presentation/providers/product_provider.dart';
import 'package:assignment_test/features/product/data/datasources/product_local_data_source.dart';
import 'package:assignment_test/features/product/data/datasources/product_remote_data_source.dart';

Future<void> productInit(GetIt sl) async {
  // Providers
  sl.registerFactory<ProductProvider>(
      () => ProductProvider(getProductUsecase: sl(), getProductsUsecase: sl()));

  // Usecases
  sl.registerLazySingleton<GetProductUsecase>(() => GetProductUsecase(sl()));
  sl.registerLazySingleton<GetProductsUsecase>(() => GetProductsUsecase(sl()));

  // Repositories

  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(
        productLocalDataSource: sl(),
        productRemoteDataSource: sl(),
      ));

  // Data Sources
  sl.registerLazySingleton<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(sl()));

  sl.registerLazySingleton<ProductLocalDataSource>(
      () => ProductLocalDataSourceImpl());
}
