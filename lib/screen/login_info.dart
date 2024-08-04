import 'package:flutter/material.dart';

class LoginInfo extends ChangeNotifier {
  var _userName = '';
  String get userName => _userName;
  bool get loggedIn => _userName.isNotEmpty;

  void login(String username) {
    _userName = username;
    notifyListeners();
  }

  void logout() {
    _userName = '';
    notifyListeners();
  }
}
