part of 'items_bloc.dart';

abstract class ItemsEvent extends Equatable {
  const ItemsEvent();
}

class GetAllItemsEvent extends ItemsEvent {
  @override
  List<Object> get props => [];
}

class GetItemDetailsEvent extends ItemsEvent {
  final int id;

  const GetItemDetailsEvent({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
