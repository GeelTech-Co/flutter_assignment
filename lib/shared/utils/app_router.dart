import 'package:assignment_test/layout/app_layout.dart';
import 'package:assignment_test/models/item_model.dart';
import 'package:go_router/go_router.dart';

import '../../modules/items/items.dart';

abstract class AppRouter {
  static const kItemScreen = '/itemScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const AppLayout(),
      ),
      GoRoute(
        path: kItemScreen,
        builder: (context, state) => ItemDetailsWidget(
          itemModel: state.extra as ItemModel,
        ),
      ),
    ],
  );
}
