import 'package:flutter/material.dart';

class FixCard extends StatelessWidget {
  const FixCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            for (var i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Center(
                      child: Text(
                    '$i',
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
              ),
          ],
        )
      ],
    );
  }
}
