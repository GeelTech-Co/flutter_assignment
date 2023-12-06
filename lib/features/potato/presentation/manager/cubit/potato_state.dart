part of 'potato_cubit.dart';

abstract class PotatoState {}

class PotatoInitial extends PotatoState {}

class LoadingLoginState extends PotatoState {}

class SuccessLoginState extends PotatoState {}

class ErrorLoginState extends PotatoState {}

/////// List Item

class ListItemLoadingState extends PotatoState {}

class SuccessListItemLoadingState extends PotatoState {}

class ErrorListItemLoadingState extends PotatoState {}

/////// Item Details
class ItemDetailsLoadingState extends PotatoState {}

class SuccessItemDetailsState extends PotatoState {}

class ErrorItemDetailsState extends PotatoState {}
class IncreaseState extends PotatoState {}


