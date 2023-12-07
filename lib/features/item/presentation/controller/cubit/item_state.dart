part of 'item_cubit.dart';

abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemError extends ItemState {
  final String message;
  const ItemError({required this.message});

  @override
  List<Object> get props => [message];
}

class ItemLoaded extends ItemState {
  final List<Item> item;

  const ItemLoaded({required this.item});

  @override
  List<Object> get props => [
        item,
      ];
}
