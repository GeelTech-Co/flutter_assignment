import 'package:assignment_test/features/items/data/models/item_model.dart';

import '../../../../core/utils/api_services.dart';
import '../models/item_details_model.dart';

abstract class ItemsRemoteDataSource{
  Future<List<ItemModel>> getItems();
  Future<ItemDetailsModel> getItemDetails({required int id});

}

class ItemsRemoteDataSourceImp extends ItemsRemoteDataSource{
  final ApiServices apiServices;

  ItemsRemoteDataSourceImp({required this.apiServices});

  final String getItemsPath = '/items';
  final String getItemDetailsPath = '/item';


  @override
  Future<List<ItemModel>> getItems() async {
    final result = await apiServices.get(endPoint: getItemsPath);
    List<ItemModel>list=[];
    for(var item in result['items']){
      list.add(ItemModel.fromJson(item));
    }
    return list;
  }

  @override
  Future<ItemDetailsModel> getItemDetails({required int id}) async {
    final result = await apiServices.get(endPoint: getItemDetailsPath);

    return ItemDetailsModel.fromJson(result);
  }

}