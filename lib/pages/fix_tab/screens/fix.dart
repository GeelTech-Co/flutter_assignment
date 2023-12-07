import 'package:assignment_test/core/models/person_model.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_blocs.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_events.dart';
import 'package:assignment_test/pages/home_page/bloc/home_page_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class FixTab extends StatefulWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  State<FixTab> createState() => _FixTabState();
}

class _FixTabState extends State<FixTab> {
  Person? person;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBlocs, HomePageState>(
      builder: (context, state) {
        return GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details) {
              if (details.primaryVelocity! >= 0) {
                state.page = state.page - 1;
                BlocProvider.of<HomePageBlocs>(context).add(HomePageEvent());
              }
            },
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
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
                  ),
                  const Divider(
                    thickness: 5,
                    color: Colors.black,
                  ),
                  Provider(
                      create: (context) => FixProvider(),
                      builder: (context, _) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: Center(
                                  child: Text(
                                'Counter: ${context.read<FixProvider>().counter!.toString()}',
                              )),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                context.read<FixProvider>().increaseCounter();
                              },
                              child: const Text('Increase Counter'),
                            )
                          ],
                        );
                      }),
                  const Divider(
                    thickness: 5,
                    color: Colors.black,
                  ),
                  Text('Ideal weight: ${person?.weight}'),
                  ElevatedButton(
                      onPressed: () {
                        // person = Person(25,180);
                        person?.getIdealWeight();
                      },
                      child: const Text('Calculate weight'))
                ],
              ),
            ));
      },
    );
  }
}

class FixProvider extends ChangeNotifier {
  int? counter;

  increaseCounter() {
    counter = counter! + 1;
    notifyListeners();
  }
}
