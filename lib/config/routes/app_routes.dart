import 'package:assignment_test/pages/fix_tab/screens/fix.dart';
import 'package:assignment_test/pages/home_page/screens/home_page.dart';
import 'package:assignment_test/pages/items_tab/screens/all_items.dart';
import 'package:assignment_test/pages/login_tab/screens/login.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(initialLocation: "/", routes: [
  GoRoute(path: "/", builder: ((context, state) => const MyHomePage())),
  GoRoute(path: "/login", builder: ((context, state) => const LoginTab())),
  GoRoute(path: "/items", builder: ((context, state) => const ItemsTab())),
  GoRoute(path: "/fix", builder: ((context, state) => const FixTab())),
]);
