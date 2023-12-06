import 'package:flutter/material.dart';

class ItemsShow extends StatelessWidget {
  const ItemsShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 3.5,
          ),
          itemCount: 5, // Number of items
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Center(
                child: Text(
                  '$index ',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
