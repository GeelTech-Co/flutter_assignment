import 'package:assignment_test/features/items/presentation/views/widgets/item_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/dependancy_injection.dart';
import '../controllers/get_item_details_cubit/get_item_details_cubit.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> getItInstance<GetItemDetailsCubit>()..getItemDetails(id: id),
      child: Scaffold(
        appBar: AppBar(),
        body: const ItemDetailsViewBody(),
      ),
    );
  }
}
