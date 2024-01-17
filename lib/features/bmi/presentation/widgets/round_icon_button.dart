import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;

  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 6.0,
      shape: const CircleBorder(),
      // fillColor: const Color(0xFF4C4F5E),
      fillColor: Colors.white,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
