import 'native.dart' if (dart.library.html) 'web.dart' as switch_value;

class MultiPlatforms {
  MultiPlatforms._();

  static Future<void> clearBrowserHistory() {
    return switch_value.clearBrowserHistory();
  }
}
