import 'package:assignment_test/providers/fix_tab_provider.dart';
import 'package:assignment_test/shared/shared_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FixTabProvider>(builder: (ctx, model, child) {
      return Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: GridView.builder(
            itemCount: 5,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2.5),
            itemBuilder: (BuildContext context, int i) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                color: Colors.red,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Center(
                    child: Text(
                  '$i',
                  style: const TextStyle(color: Colors.white),
                )),
              );
            },
          )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                defaultDivider(thickness: 5),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                      child: Text(
                    'Counter: ${model.counter!.toString()}',
                  )),
                ),
                defaultButton(
                    onPressed: () async => model.increaseCounter(),
                    text: 'Increase Counter'),
                defaultDivider(thickness: 5),
                Text('Ideal weight: ${model.person?.idealWeight}'),
                defaultButton(
                    onPressed: () => model.calculateWeight(),
                    text: 'Calculate weight'),
              ],
            ),
          ),
        ],
      );
    });
  }
}
