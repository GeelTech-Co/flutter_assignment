import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Tab(
        child: Text(title),
      ),
    );
  }
}
