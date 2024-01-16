part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.started() = _Started;
  const factory ItemEvent.getItems() = GetItems;
  const factory ItemEvent.getProfileItem({required int id}) = GetItemProfile;
}
