

import 'package:assignment_test/Features/itemspage/manger/items_bloc/items_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ItemsTab extends StatefulWidget {
  const ItemsTab({Key? key}) : super(key: key);

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  List<dynamic> items = [];
  bool isLoading = false;
  bool isError = false;
  List body = [
{"id":1,"name":"item_1", "price":10.99},
{ "id":2,"name":"item_2","price":5.99 },
{"id":3,"name":"item_3","price":1.99}
];
List body2 = [
  {"id":1,"imageUrl":"https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pass/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg", "type":"phone", "related":[{"id":2,"name":"item_2", "price":5.99 },{"id":3,"name":"item_3","price":1.99 }]}
];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemsBloc, ItemsState>(
      listener: (context, state){
        print(state);
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ItemsBloc>(context).add(GetItems());
                },
                child: const Text('Load items'),
              ),
              if (state is ItemsLoding)
                const CircularProgressIndicator() // Show loading indicator while fetching
              else if (state is ItemsSuccess)
                Expanded(
                  child: Column(
                    children: [
                      ...List.generate(body.length, (index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemDetailsWidget(name: body[index]['name'].toString(), price: body[index]['price'].toString(), id: body[index]['id'],),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(body[index]['name'].toString()),
                                Text(body[index]['price'].toString()),
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                      // final item = items[index];
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class ItemDetailsWidget extends StatelessWidget {

  const ItemDetailsWidget({Key? key, required this.name, required this.price, required this.id})
      : super(key: key);
  final String name;
  final String price;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              id == 1? Image.network("https://media.wired.com/photos/62d75d34ddaaa99a1df8e61d/master/pass/Phone-Camera-Webcam-Gear-GettyImages-1241495650.jpg"): const Text("Not Found Image"),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name),
                    Text(price),
                  ],
                ),
              ),
              // TODO: Implement Related items List
            ],
          ),
        ),
      ),
    );
  }
}
