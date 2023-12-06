part of 'home_layout_cubit.dart';

abstract class HomeLayoutState extends Equatable {
  const HomeLayoutState();

  @override
  List<Object> get props => [];
}

class HomeLayoutInitial extends HomeLayoutState {}

class Counter extends HomeLayoutState {}

class CalculateWeight extends HomeLayoutState {}

class SetPerson extends HomeLayoutState {}

class SwitchTabsToItemState extends HomeLayoutState {}

class SwitchTabsToFixState extends HomeLayoutState {}

class LoadingState extends HomeLayoutState {}

class LogInFailureState extends HomeLayoutState {
  final Failures failure;
  const LogInFailureState({
    required this.failure,
  });
}

class GetItemsFailureState extends HomeLayoutState {
  final Failures failure;
  const GetItemsFailureState({
    required this.failure,
  });
}

class GetItemsSuccess extends HomeLayoutState {}

class LogInSuccess extends HomeLayoutState {}

class SwitchTabsToLogInState extends HomeLayoutState {}
