
import 'package:dispensadora/core/menus/home.dart';
import 'package:dispensadora/core/menus/retiros.dart';
import 'package:go_router/go_router.dart';

class MyApp {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MenuPrincipal(),
      ),
      
      GoRoute(
        path: '/retiros',
        builder: (context, state) => Retiros(),
      ),
      
    ],
  );
}
