import 'package:flutter/material.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/constants.dart';

const double iconSize = 90.0;
const sizedBoxHeight = 15.0;

class CardChild extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const CardChild({super.key, required this.icon, required this.label,required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
          color: color,

        ),
        const SizedBox(height: sizedBoxHeight),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
