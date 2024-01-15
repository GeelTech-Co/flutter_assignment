import 'package:flutter/material.dart';

class NumbersGrid extends StatelessWidget {
  const NumbersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [for (var i = 0; i < 5; i++) _NumberItem(title: i.toString())],
    );
  }
}

class _NumberItem extends StatelessWidget {
  const _NumberItem({
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        height: 40,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
