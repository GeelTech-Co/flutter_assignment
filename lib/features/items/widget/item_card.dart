import 'package:flutter/material.dart';

class ItemCardComponent extends StatelessWidget {
  const ItemCardComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      color: Colors.amber,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'name',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'price',
            style: TextStyle(fontSize: 30),
          ),
          //TODO Implement Related items List
        ],
      ),
    );
  }
}
