part of 'items_bloc.dart';

 class ItemsState {}

 class ItemsInitial extends ItemsState {}
class ItemsLoding extends ItemsState{}
class ItemsSuccess extends ItemsState{
  Item items;
  ItemsSuccess(this.items);
}