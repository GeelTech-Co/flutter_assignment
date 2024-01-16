part of 'fix_cubit.dart';

class FixState extends Equatable {
  const FixState({
    required this.person,
    this.counter = 0,
  });
  final Person person;
  final int counter;
  FixState copyWith({
    Person? person,
    int? counter,
  }) =>
      FixState(
        person: person ?? this.person,
        counter: counter ?? this.counter,
      );

  @override
  List<Object> get props => [person, counter];
}
