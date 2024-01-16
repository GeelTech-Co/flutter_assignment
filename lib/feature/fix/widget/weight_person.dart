part of '../fix.dart';

class _WeightPerson extends StatelessWidget {
  const _WeightPerson();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FixCubit, FixState, Person>(
      selector: (state) => state.person,
      builder: (context, person) {
        return Column(
          children: [
            Text('Ideal weight: ${person.getIdealWeight().toStringAsFixed(1)}'),
            ElevatedButton(
              onPressed: () => context.read<FixCubit>().calculateWight(),
              child: const Text('Calculate weight'),
            ),
          ],
        );
      },
    );
  }
}
