import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/View/error_widget.dart' as e;
import 'package:todo_app/View/home_page.dart';
import 'package:todo_app/View/login_page.dart';
import 'package:todo_app/View/signup_page.dart';

class AppRoute {
  static final GoRouter router = GoRouter(
      routes: [
        GoRoute(
            path: "/",
            builder: (BuildContext context, GoRouterState state) {
              return LoginPage();
            }),
        GoRoute(
            path: "/home",
            builder: (BuildContext context, GoRouterState state) {
              return HomePage();
            }),
        GoRoute(
            path: "/signup",
            builder: (BuildContext context, GoRouterState state) {
              return SignupPage();
            }),
        GoRoute(
            path: "/Login",
            builder: (BuildContext context, GoRouterState state) {
              return LoginPage();
            })
      ],
      errorBuilder: (context, state) {
        return e.ErrorWidget(error: state.error.toString());
      });
}
