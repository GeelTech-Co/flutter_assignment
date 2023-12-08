part of 'items_bloc.dart';

abstract class ItemsState extends Equatable {
  const ItemsState();
}

class ItemsInitial extends ItemsState {
  @override
  List<Object> get props => [];
}
class GetAllItemsLoading extends ItemsState {
  @override
  List<Object?> get props => [];
}

class GetAllItemsSuccess extends ItemsState {
  final List<ItemModel> itemsList;

  const GetAllItemsSuccess(this.itemsList);

  @override
  List<Object> get props => [itemsList];
}

class GetAllItemsError extends ItemsState {
  final String error;

  const GetAllItemsError(this.error);

  @override
  List<Object> get props => [error];
}

class GetItemDetailsLoading extends ItemsState {
  @override
  List<Object?> get props => [];
}

class GetItemDetailsSuccess extends ItemsState {
  final SingleItemModel singleItemModel;

  const GetItemDetailsSuccess(this.singleItemModel);

  @override
  List<Object> get props => [singleItemModel];
}

class GetItemDetailsError extends ItemsState {
  final String error;

  const GetItemDetailsError(this.error);

  @override
  List<Object> get props => [error];
}
