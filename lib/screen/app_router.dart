import 'package:erfanautorouter/Developer.dart';
import 'package:erfanautorouter/screen/Third_page.dart';
import 'package:erfanautorouter/screen/error_page.dart';
import 'package:erfanautorouter/screen/fifth_page.dart';
import 'package:erfanautorouter/screen/first_page.dart';
import 'package:erfanautorouter/screen/fourth_page.dart';
import 'package:erfanautorouter/screen/home_screen.dart';
import 'package:erfanautorouter/screen/multi_platform_class.dart';
import 'package:erfanautorouter/screen/second_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    redirect: (context, state) {
      MultiPlatforms.clearBrowserHistory();
      return null;
    },
    errorBuilder: (context, state) {
      return ErrorPage();
    },
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => HomeScreen(),
        routes: [
          GoRoute(
            path: 'first',
            name: 'first',
            builder: (context, state) => FirstPage(
              developer: state.extra is Developer
                  ? state.extra as Developer
                  : Developer.fromMap(Map.from(state.extra as Map)),
            ),
            routes: [
              GoRoute(
                path: 'second',
                name: 'second',
                builder: (context, state) => SecondPage(
                  developer: state.extra is Developer
                      ? state.extra as Developer
                      : Developer.fromMap(
                          Map.from(state.extra as Map),
                        ),
                ),
                routes: [
                  GoRoute(
                    path: 'third',
                    name: 'third',
                    builder: (context, state) => ThirdPage(),
                    routes: [
                      GoRoute(
                        path: 'fourth',
                        name: 'fourth',
                        builder: (context, state) => FourthPage(),
                        routes: [
                          GoRoute(
                            path: 'fifth',
                            name: 'fifth',
                            builder: (context, state) => FifthPage(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
