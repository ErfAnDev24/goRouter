import 'dart:js' as js;
import 'package:flutter/foundation.dart';

Future<void> clearBrowserHistory() async {
  js.context.callMethod('clearBrowserHistory',
      [kDebugMode ? "http://localhost:59429" : "https://ea2.dev"]);
}
