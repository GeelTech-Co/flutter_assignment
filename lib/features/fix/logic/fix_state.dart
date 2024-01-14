part of 'fix_bloc.dart';

@freezed
class FixState with _$FixState {
  const factory FixState.initial() = _Initial;
  const factory FixState.increaseCounterState() = IncreaseCounterState;
  const factory FixState.calculateWeightState() = CalculateWeightState;
}
