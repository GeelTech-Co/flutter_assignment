
import 'package:assignment_test/Features/fixpage/presentation/manger/fix_bloc/fix_bloc.dart';
import 'package:assignment_test/Features/fixpage/presentation/manger/fix_bloc/fix_event.dart';
import 'package:assignment_test/Features/fixpage/presentation/manger/fix_bloc/fix_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixTab extends StatefulWidget {
  FixTab({Key? key}) : super(key: key);
  int index = 0;
  @override
  State<FixTab> createState() => _FixTabState();
}

class _FixTabState extends State<FixTab> {
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocConsumer<FixBloc, FixState>(
      listener: (context, state){
        print(state);
        if (state is IncState) {
          // print(state.index);
          widget.index = state.index;
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: width / 2.5,
                          color: Colors.red,
                          child: const Center(
                            child: Text("0"),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: width / 2.5,
                          color: Colors.red,
                          child: const Center(
                            child: Text("1"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: width / 2.5,
                          color: Colors.red,
                          child: const Center(
                            child: Text("2"),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: width / 2.5,
                          color: Colors.red,
                          child: const Center(
                            child: Text("3"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: width / 2.5,
                          color: Colors.red,
                          child: const Center(
                            child: Text("4"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )),
            const Divider(thickness: 5, color: Colors.black),
            Column(
              children: [
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: Center(
                      // child: Text('Counter: ${fixProvider.counter.toString()}'),
                      ),
                ),
                Text("Conter: ${widget.index}"),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<FixBloc>(context).add(IncEvent());
                  },
                  child: const Text('Increase Counter'),
                )
              ],
            ),
            const Divider(thickness: 5, color: Colors.black),
            const Text('Ideal weight:'),
            ElevatedButton(
              onPressed: () {
                // context.read<Person>().getIdealWeight();
              },
              child: const Text('Calculate weight'),
            )
          ],
        );
      },
    );
  }
}
