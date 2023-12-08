import 'package:assignment_test/features/items/presentation/controllers/get_item_details_cubit/get_item_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'item_details_data.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocBuilder<GetItemDetailsCubit,GetItemDetailsState>(
          builder: (BuildContext context, state) {
            if(state is GetItemDetailsSuccess){
              return ItemDetailsData(itemDetailsEntity: state.itemDetailsEntity,);
            }
            else if(state is GetItemDetailsFailure){
              Text(state.message);
            }
            else{
              return const CircularProgressIndicator();
            }
            return const SizedBox();
          },
        ));
  }
}
