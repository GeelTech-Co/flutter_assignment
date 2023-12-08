import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imageLink;
  const ItemImage({
    super.key, required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              imageLink),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}