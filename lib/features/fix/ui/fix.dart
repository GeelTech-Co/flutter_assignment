import 'package:assignment_test/features/fix/logic/fix_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_divider.dart';
import 'widgets/grid_view_item.dart';

class FixTab extends StatelessWidget {
  const FixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<FixBloc>();
    return CustomScrollView(
      slivers: [
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
          ),
          itemBuilder: (context, index) => GridViewItem(index: index),
          itemCount: 5,
        ),
        const CustomDivider(),
        SliverToBoxAdapter(
          child: BlocBuilder<FixBloc, FixState>(
            buildWhen: (previous, current) => current is IncreaseCounterState,
            builder: (context, state) {
              return SizedBox(
                width: 100,
                height: 100,
                child: Center(
                    child: Text(
                      'Counter: ${bloc.counter.toString()}',
                    )),
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.25),
            child: ElevatedButton(
              onPressed: () {
                bloc.add(const IncreaseCounter());
              },
              child: const Text('Increase Counter'),
            ),
          ),
        ),
        const CustomDivider(),
        SliverToBoxAdapter(
          child: BlocBuilder<FixBloc, FixState>(
            buildWhen: (previous, current) => current is CalculateWeightState,
            builder: (context, state) {
              return Text('Ideal weight: ${bloc.weight}',textAlign: TextAlign.center,);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.25),
            child: ElevatedButton(
                onPressed: () {
                  bloc.add(const CalculateWeight());
                },
                child: const Text('Calculate weight')),
          ),
        ),
      ],
    );
  }
}