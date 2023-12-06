import 'package:flutter/material.dart';
import '../../../../core/model/person_model.dart';
import '../../../../core/utils/app_strings.dart';
import '../widget/count_widget.dart';
import '../widget/defult_button.dart';
import '../widget/item_count_widget.dart';

class FixTabPage extends StatelessWidget {
  FixTabPage({Key? key}) : super(key: key);
  Person? person;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ItemCountWidget(),
        const CountWidget(),
        Text('${AppStrings.idealWeight} ${person?.weight}'),
        DefaultButton(
          name: AppStrings.calculateWeight,
          onPressed: () async {
            // person?.getIdealWeight();
          },
        )
      ],
    );
  }
}
