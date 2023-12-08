part of 'get_item_details_cubit.dart';

abstract class GetItemDetailsState {}

class GetItemDetailsInitial extends GetItemDetailsState {}

class GetItemDetailsLoading extends GetItemDetailsState {}

class GetItemDetailsSuccess extends GetItemDetailsState {
  final ItemDetailsEntity itemDetailsEntity;

  GetItemDetailsSuccess({required this.itemDetailsEntity});

}

class GetItemDetailsFailure extends GetItemDetailsState {
  final String message;

  GetItemDetailsFailure({required this.message});

}
