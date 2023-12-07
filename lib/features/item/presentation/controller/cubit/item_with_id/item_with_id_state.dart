part of 'item_with_id_cubit.dart';

abstract class ItemWithIdState extends Equatable {
  const ItemWithIdState();

  @override
  List<Object> get props => [];
}

class ItemWithIdInitial extends ItemWithIdState {}

class ItemWithIdLoading extends ItemWithIdState {}

class ItemWithIdError extends ItemWithIdState {
  final String message;
  const ItemWithIdError({required this.message});

  @override
  List<Object> get props => [message];
}

class ItemWithIdLoaded extends ItemWithIdState {
  final ItemWithId itemWithId;

  const ItemWithIdLoaded({required this.itemWithId});

  @override
  List<Object> get props => [
        itemWithId,
      ];
}
