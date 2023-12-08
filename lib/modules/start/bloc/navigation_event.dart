part of 'navigation_bloc.dart';

abstract class NavigationEvent {}

class NavigateToLogin extends NavigationEvent {}

class NavigateToItems extends NavigationEvent {}

class NavigateToFix extends NavigationEvent {}