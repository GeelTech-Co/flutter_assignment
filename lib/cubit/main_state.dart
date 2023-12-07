part of 'main_cubit.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}
class IncrementCounterState extends MainState{}
class IdealWeightState extends MainState{}
class ItemsSuccessState extends MainState{}
class ItemsErrorState extends MainState{}
class ItemDetailSuccessState extends MainState{}
class ItemDetailErrorState extends MainState{}
class LoginSuccessState extends MainState{}
class LoginErrorState extends MainState{}
