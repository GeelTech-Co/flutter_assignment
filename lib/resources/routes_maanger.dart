import 'package:assignment_test/modules/items/views/item_details_screen.dart';
import 'package:assignment_test/modules/start/views/start_screen.dart';
import 'package:flutter/material.dart';


class Routes {
  static const String initialRoute = '/';
  static const String itemDetailsRoute = '/itemDetailsRoute';


}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const StartScreen());
      case Routes.itemDetailsRoute:
        ItemDetailsScreenArgs args = settings.arguments as ItemDetailsScreenArgs;
        return MaterialPageRoute(builder: (_) => ItemDetailsScreen(id: args.id,));


      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
class ItemDetailsScreenArgs {
  final int id;

  ItemDetailsScreenArgs({required this.id});
}