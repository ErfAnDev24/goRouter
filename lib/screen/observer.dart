import 'package:flutter/material.dart';

class MyRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('ErfAn check route ${route.settings.name}');
    print('ErfAn check previousRoute ${previousRoute?.settings.name}');

    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      print('Pushed route: ${route.settings.name}');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (route is PageRoute) {
      print('Popped route: ${route.settings.name}');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('ErfAn check route ${newRoute?.settings.name}');
    print('ErfAn check previousRoute ${oldRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      print('Replaced route: ${newRoute.settings.name}');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (route is PageRoute) {
      print('Removed route: ${route.settings.name}');
    }
  }
}
