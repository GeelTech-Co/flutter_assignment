import 'package:assignment_test/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTab extends StatelessWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            itemCount: MainCubit.get(context).items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    color: Colors.white38,
                    child: ListTile(
                      title: Text(MainCubit.get(context).items[index].name),
                      subtitle:
                          Text('${MainCubit.get(context).items[index].price}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemDetailsScreen(),
                          ),
                        );
                      },
                    )),
              );
            },
          );
        });
  }
}

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Potato Tech Flutter Assignment'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Image.network(MainCubit.get(context).itemDetail.imageUrl),
                ),
                Text(
                  'Type: ${MainCubit.get(context).itemDetail.type}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    itemCount: MainCubit.get(context).itemDetail.related.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                            color: Colors.white38,
                            child: ListTile(
                              title: Text(MainCubit.get(context)
                                  .itemDetail
                                  .related[index]
                                  .name),
                              subtitle: Text(
                                  '${MainCubit.get(context).itemDetail.related[index].price}'),
                              onTap: () {},
                            )),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
