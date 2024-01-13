
part of 'item_cubit.dart';

@immutable
abstract class ItemScreenState {}

class ItemScreenInitial extends ItemScreenState {}


class GetItemLoading extends ItemScreenState {}

class GetItemSuccess extends ItemScreenState {}

class GetItemError extends ItemScreenState {
  GetItemError({required this.error});

  String error;
}



class GetItemDetailLoading extends ItemScreenState {}

class GetItemDetailSuccess extends ItemScreenState {}

class GetItemDetailError extends ItemScreenState {
  GetItemDetailError({required this.error});

  String error;
}

