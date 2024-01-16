import 'package:assignment_test/data/model/person_abstract_model.dart';
import 'package:assignment_test/feature/fix/bloc/fix_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'widget/counter.dart';
part 'widget/weight_person.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FixCubit>(
      create: (context) => FixCubit(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 40,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              primary: true,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(
            thickness: 5,
            color: Colors.black,
          ),
          const _Counter(),
          const Divider(
            thickness: 5,
            color: Colors.black,
          ),
          const _WeightPerson(),
        ],
      ),
    );
  }
}
