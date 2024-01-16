import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        height: 40,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.4,
        child: Center(
            child: Text(
              '$index',
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
