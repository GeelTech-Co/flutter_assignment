import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../model.dart';
import '../../controllers/fix_provider.dart';

class WeightSection extends StatelessWidget {
  const WeightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<FixProvider>(builder: (BuildContext context, value, Widget? child) {
          return Text('Ideal weight: ${value.weight}');
        },
        ),
        ElevatedButton(
            onPressed: (){
              Person person = Male(25,180);
              context.read<FixProvider>().calculateWeight(person);
            },
            child: const Text('Calculate weight'))
      ],
    );
  }
}
