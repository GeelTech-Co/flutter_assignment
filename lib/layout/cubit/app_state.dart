part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class UserLoginLoadingState extends AppState {}

class UserLoginSuccessState extends AppState {
  final UserResponse userResponse;
  UserLoginSuccessState({required this.userResponse});
}

class UserLoginFailedState extends AppState {
  final String error;
  UserLoginFailedState({required this.error});
}

class NotConnectedState extends AppState {}

class CounterPlus extends AppState {}

class CalculateWeight extends AppState {}

class ItemsLoadingState extends AppState {}

class ItemsSuccessState extends AppState {}

class ItemsFailedState extends AppState {
  final String error;
  ItemsFailedState({required this.error});
}

class ItemLoadingState extends AppState {}

class ItemSuccessState extends AppState {
  final ItemScreenModel itemScreenModel;
  ItemSuccessState({required this.itemScreenModel});
}

class ItemFailedState extends AppState {
  final String error;
  ItemFailedState({required this.error});
}