import 'package:flutter/material.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        child: Center(
            child: Text(
              '$index',
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
