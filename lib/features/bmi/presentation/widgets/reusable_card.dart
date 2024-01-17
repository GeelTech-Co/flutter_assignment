import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Color? borderColor;
  final Widget cardChild;
  final void Function()? onTap;

  const ReusableCard({
    super.key,
    required this.color,
    required this.cardChild,
    this.borderColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
          border: Border.all(color: borderColor ?? Colors.transparent),
        ),
        child: cardChild,
      ),
    );
  }
}
