import '../../../../../core/networking/app_service_client/app_service_client.dart';
import '../model/item_model.dart';

abstract class ItemRemoteDatabase {
  Future<List<GetItemResponse>> getItem();
}

class ItemRemoteDatabaseImpl implements ItemRemoteDatabase {
  final AppServiceClient appServiceClient;

  const ItemRemoteDatabaseImpl({required this.appServiceClient});
  @override
  Future<List<GetItemResponse>> getItem() async {
    return await appServiceClient.getItem();
  }
}
