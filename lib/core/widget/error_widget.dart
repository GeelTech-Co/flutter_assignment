import 'package:flutter/material.dart';

class ErrorOnGetDataWidget extends StatelessWidget {
  const ErrorOnGetDataWidget({
    super.key,
    required this.errorMassage,
    required this.onRefresh,
  });
  final String errorMassage;
  final Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(errorMassage),
        ),
        IconButton(onPressed: onRefresh, icon: const Icon(Icons.refresh)),
      ],
    );
  }
}
