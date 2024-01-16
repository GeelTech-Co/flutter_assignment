part of 'item_deatlis_cubit.dart';

class ItemDetailsState extends Equatable {
  const ItemDetailsState({
    this.errorMassage = '',
    this.getDataStatus = GetDataStatus.loading,
    this.itemDetails,
  });
  final ItemDetails? itemDetails;
  final GetDataStatus getDataStatus;
  final String errorMassage;
  ItemDetailsState copyWith({
    ItemDetails? itemDetails,
    GetDataStatus? getDataStatus,
    String? errorMassage,
  }) =>
      ItemDetailsState(
        errorMassage: errorMassage ?? this.errorMassage,
        getDataStatus: getDataStatus ?? this.getDataStatus,
        itemDetails: itemDetails ?? this.itemDetails,
      );

  @override
  List<Object> get props => [
        errorMassage,
        getDataStatus,
      ];
}
