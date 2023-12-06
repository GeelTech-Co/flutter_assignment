import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:assignment_test/features/potato/presentation/widget/defult_button.dart';
import 'package:flutter/material.dart';

class ItemsTabPage extends StatelessWidget {
  const ItemsTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [DefaultButton(onPressed: () {}, name: AppStrings.loadItems)],
    );
  }
}
