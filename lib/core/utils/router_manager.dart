import 'package:assignment_test/features/items/presentation/views/item_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/main_view/view/main_view.dart';


abstract class AppRouter {
  static const itemDetailsPath = '/itemDetails';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(title: 'Potato Tech Flutter Assignment',),
      ),
      GoRoute(
        path: itemDetailsPath,
        builder: (context, state) => ItemDetailsView(id:state.extra as int ,),
      ),
    ],
  );
}
