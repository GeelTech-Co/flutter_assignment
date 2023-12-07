import 'package:assignment_test/pages/home_page/bloc/home_page_blocs.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_events.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  List<dynamic> items = []; //TODO Change type

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBlocs, HomePageState>(
      builder: (context, state) {
        return GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details) {
              if (details.primaryVelocity! < 0) {
                state.page = state.page + 1;
                BlocProvider.of<HomePageBlocs>(context).add(HomePageEvent());
              } else {
                state.page = state.page - 1;
                BlocProvider.of<HomePageBlocs>(context).add(HomePageEvent());
              }
            },
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //TODO Implement items List
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        //TODO Implement
                      },
                      child: const Text('Load items'),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ItemDetailsWidget> createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  dynamic itemDetails; //TODO Change type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Image.network(itemDetails!.imageUrl ?? ''),
          Text(itemDetails!.type ?? ''),
          //TODO Implement Related items List
        ],
      )),
    );
  }
}
