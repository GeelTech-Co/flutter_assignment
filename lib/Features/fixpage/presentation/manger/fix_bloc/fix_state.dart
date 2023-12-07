
class FixState {}

class FixInitial extends FixState {}
class IncState extends FixState{
  final int index;
  IncState({required this.index});
}