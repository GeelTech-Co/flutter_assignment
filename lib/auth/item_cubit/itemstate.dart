// itemstate.dart

part of 'item_cubit.dart';

@immutable
abstract class ItemScreenState {}

class ItemScreenInitial extends ItemScreenState {}

class GetItemLoading extends ItemScreenState {}

class GetItemSuccess extends ItemScreenState {}

class GetItemError extends ItemScreenState {
  final String error;

  GetItemError({required this.error});
}

class GetItemDetailLoading extends ItemScreenState {}

class GetItemDetailSuccess extends ItemScreenState {}

class GetItemDetailError extends ItemScreenState {
  final String error;

  GetItemDetailError({required this.error});
}
