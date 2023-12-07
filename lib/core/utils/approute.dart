
import 'package:assignment_test/Features/loginpage/presentation/views/login.dart';
import 'package:assignment_test/Features/splashpage/presentation/views/splashveiw.dart';
import 'package:go_router/go_router.dart';





abstract class AppRouter {
  
  static const ksplashveiw = '/splashveiw';
  static const kloginpage = '/loginpage';
  

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kloginpage,
        builder: (context, state) =>  LoginTab(),
      )
    ],
  );
}