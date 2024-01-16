part of 'items_cubit.dart';

class ItemsState extends Equatable {
  const ItemsState({
    this.errorMassage = '',
    this.getDataStatus = GetDataStatus.loading,
    this.items = const [],
  });
  final GetDataStatus getDataStatus;
  final String errorMassage;
  final List<ItemGeneral> items;
  ItemsState copyWith({
    GetDataStatus? getDataStatus,
    String? errorMassage,
    List<ItemGeneral>? items,
  }) =>
      ItemsState(
        errorMassage: errorMassage ?? this.errorMassage,
        getDataStatus: getDataStatus ?? this.getDataStatus,
        items: items ?? this.items,
      );
  @override
  List<Object> get props => [getDataStatus, errorMassage, items];
}
