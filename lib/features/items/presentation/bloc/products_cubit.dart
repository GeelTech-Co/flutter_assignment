import 'package:assignment_test/core/api/remote/dio_helper.dart';
import 'package:assignment_test/core/thems/colors.dart';
import 'package:assignment_test/core/utils/utils.dart';
import 'package:assignment_test/features/items/model/items_model.dart';
import 'package:assignment_test/features/items/model/product_details_model.dart';
import 'package:assignment_test/features/items/presentation/bloc/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  static ProductCubit of(BuildContext context) => BlocProvider.of<ProductCubit>(context);
  ItemsModel? products;

  Future<void> getProducts(BuildContext context) async {
    emit(ProductLoadingState());
    await DioHelper.makeNetworkRequest(endpoint: 'products', context: context).then(
      (value) async {
        bool result = await InternetConnectionChecker().hasConnection;

        if (value['StatusCode'] == '200' && result == true) {
          products = ItemsModel.fromJson(value);
          emit(ProductSuccessState());
        } else {
          if (context.mounted && result == false) {
            Utils.showToast(context: context, message: 'Please Check Internet.', backgroundColor: AppColors.red);
          } else {
            emit(ProductErrorState());
          }
        }
      },
    );
  }

  ProductDetailsModel? itemDetails;

  Future<void> getProductsDetails(BuildContext context) async {
    emit(ProductDetailsLoadingState());
    await DioHelper.makeNetworkRequest(endpoint: 'details_product', context: context).then(
      (value) {
        if (value['StatusCode'] == '200') {
          itemDetails = ProductDetailsModel.fromJson(value['body']);

          emit(ProductDetailsSuccessState());
        }
      },
    );
  }
}
