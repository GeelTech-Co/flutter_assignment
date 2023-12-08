part of 'get_items_cubit.dart';

abstract class GetItemsState {}

class GetItemsInitial extends GetItemsState {}
class GetItemsLoading extends GetItemsState {}
class GetItemsSuccess extends GetItemsState {
  final List<ItemEntity> list;

  GetItemsSuccess({required this.list});
}
class GetItemsFailure extends GetItemsState {
  final String message;

  GetItemsFailure({required this.message});
}
