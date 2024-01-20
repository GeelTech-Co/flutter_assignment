import 'package:assignment_test/features/authorization/presentation/providers/auth_provider.dart';
import 'package:assignment_test/features/item/presentation/providers/item_provider.dart';
import 'package:get_it/get_it.dart';

import 'core/base_app_client/base_app_client.dart';
import 'features/authorization/data/datasources/user_data_source.dart';
import 'features/item/data/datasources/active_item_data_source.dart';
import 'features/item/data/datasources/item_data_source.dart';
import 'features/item/presentation/providers/active_item_provider.dart';

GetIt di = GetIt.instance;

void setupLocator() {
  //! BaseAppClient
  di.registerFactory(() => BaseAppClient());

  // Repository
  di.registerFactory(() => UserDataSourceImpl(baseAppClient: di()));
  di.registerFactory(() => ItemDataSourceImpl(baseAppClient: di()));
  di.registerFactory(() => ActiveItemDataSourceImpl(baseAppClient: di()));

  //Provider
  di.registerFactory(() => AuthProvider(userDataSourceImpl: di()));
  di.registerFactory(() => ItemProvider(itemDataSourceImpl: di()));
  di.registerFactory(() => ActiveItemProvider(activeItemDataSourceImpl: di()));
}
