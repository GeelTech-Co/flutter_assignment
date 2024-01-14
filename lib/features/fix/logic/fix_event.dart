part of 'fix_bloc.dart';

@freezed
class FixEvent with _$FixEvent {
  const factory FixEvent.started() = _Started;
  const factory FixEvent.increaseCounter() = IncreaseCounter;
  const factory FixEvent.calculateWeight() = CalculateWeight;
}
