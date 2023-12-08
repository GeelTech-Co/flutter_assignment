import 'package:assignment_test/resources/colors_manager.dart';
import 'package:flutter/material.dart';

class FiveContainers extends StatelessWidget {
  const FiveContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.start,
          children:
          List.generate(
            5,
                (index) => Container(
              color: ColorsManager.redPrimary,
              height: 40,
              width: MediaQuery.sizeOf(context).width/2 -30,
              child: Center(child: Text('$index',style: Theme.of(context).textTheme.displayMedium)),
            ),
          )
          ,
        ),
      ),
    );
  }
}