
import 'package:assignment_test/core/config/route/app_route_name.dart';
import 'package:assignment_test/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import '../../../features/item/presentation/pages/item_detail_page.dart';

class AppGoRoute{
  static GoRouter route = GoRouter(routes: [
    GoRoute(
        path: AppRouteName.home,
      builder: (context, state) =>  const HomePage(),
    ),

    GoRoute(
      path: AppRouteName.activeItem,
      builder: (context, state) =>  ItemDetailsPage(id: int.parse(state.extra.toString() ),),
    ),
  ]);
}