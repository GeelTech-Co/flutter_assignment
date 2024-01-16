part of '../fix.dart';

class _Counter extends StatelessWidget {
  const _Counter();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FixCubit, FixState, int>(
      selector: (state) => state.counter,
      builder: (context, counter) {
        return Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Center(
                  child: Text(
                'Counter: $counter',
              )),
            ),
            ElevatedButton(
              onPressed: () => context.read<FixCubit>().increment(),
              child: const Text('Increase Counter'),
            )
          ],
        );
      },
    );
  }
}
