import 'package:assignment_test/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.name,
  });

  final void Function()? onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: onPressed,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(name),
            ),
          )),
    );
  }
}
