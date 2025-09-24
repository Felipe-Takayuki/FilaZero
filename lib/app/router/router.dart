import 'package:filazero/app/pages/home/home.dart';
import 'package:filazero/app/pages/register/register.dart';
import 'package:filazero/app/pages/sign_in/sign_in.dart';
import 'package:go_router/go_router.dart';

class ConfigRouter {
  final router = GoRouter(
    initialLocation: "/sign_in",
    routes: [
      GoRoute(
        path: "/home",
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: "/sign_up",
        builder: (context, state) {
          return const RegisterPage();
        },
      ),
      GoRoute(
        path: "/sign_in",
        builder: (context, state) {
          return const SignInPage();
        },
      ),
    ],
  );
}
