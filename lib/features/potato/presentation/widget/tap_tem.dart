
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TapItem extends StatelessWidget {
  const TapItem({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Tab(
        child: Text(name),
      ),
    );
  }
}