
import 'package:assignment_test/resources/colors_manager.dart';
import 'package:assignment_test/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class SingleItemFromList extends StatelessWidget {
  final String title;
  final double price;
  final VoidCallback onTap;
  const SingleItemFromList({
    super.key, required this.title, required this.price, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 24),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: ColorsManager.white,

              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${StringsManager.name}: $title',style: Theme.of(context).textTheme.displayMedium!.copyWith(color:ColorsManager.black,fontSize: 20),),
                const SizedBox(height: 10),
                Text('${StringsManager.price}: $price',style: Theme.of(context).textTheme.displayMedium!.copyWith(color:ColorsManager.black,fontSize: 20),)
              ]
          ),
        ),
      ),
    );
  }
}