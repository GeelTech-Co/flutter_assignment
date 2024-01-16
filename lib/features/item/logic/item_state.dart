part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState.initial() = _Initial;

  const factory ItemState.loadingGetItems() = LoadingGetItems;
  const factory ItemState.successGetItems(ItemsResponse data) = SuccessGetItems;
  const factory ItemState.errorGetItems({required String error}) = ErrorGetItems;

  const factory ItemState.loadingGetItemProfile() = LoadingGetItemProfile;
  const factory ItemState.successGetItemProfile(ItemProfileResponse data) = SuccessGetItemProfile;
  const factory ItemState.errorGetItemProfile({required String error}) = ErrorGetItemProfile;
}
