import 'package:assignment_test/generated/assets.dart';
import 'package:assignment_test/models/item_model.dart';
import 'package:assignment_test/models/item_screen_model.dart';
import 'package:assignment_test/shared/utils/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/cubit/app_cubit.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        //cubit.getItems(); //TODO Remove comment after replace the api url
        return ListView.builder(
          itemBuilder: (context, index) => ItemCard(
            itemModel: cubit.itemsList[index],
          ),
          itemCount: cubit.itemsList.length,
        );
      },
    );
  }
}

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({Key? key, required this.itemModel})
      : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        ItemScreenModel model = AppCubit.get(context).itemScreenModel;
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  FadeInImage.assetNetwork(
                    height: MediaQuery.sizeOf(context).height*0.4,
                    width: double.infinity,
                    image: model.imageUrl.toString(),
                    placeholder: Assets.assetsEmpty,
                  ),
                  Text(
                    model.type ?? '',
                    style: const TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height*0.02,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Related Items',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => ItemCard(
                        itemModel: model.related![index],
                      ),
                      itemCount: model.related!.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// class ItemDetailsWidget extends StatelessWidget {
//   const ItemDetailsWidget({Key? key, required this.itemModel}) : super(key: key);
//   final ItemModel itemModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AppCubit, AppState>(
//       builder: (context, state) {
//         AppCubit.get(context).getItem(itemModel.id!);
//         if (state is ItemSuccessState){
//           return Scaffold(
//             appBar: AppBar(),
//             body: Center(
//                 child: Column(
//                   children: [
//                     Image.network(state.itemScreenModel.imageUrl ??
//                         'https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg'),
//                     Text(state.itemScreenModel.type ?? ''),
//                     //TODO Implement Related items List
//                   ],
//                 )),
//           );
//         } else{
//           return const Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
