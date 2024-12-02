import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  bool _isLoggedIn = false;
  Map<String, dynamic> _userInfo = {};

  bool get isLoggedIn => _isLoggedIn;
  Map<String, dynamic> get userInfo => _userInfo;

  void login(data) {
    _isLoggedIn = true;
    _userInfo = data;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _userInfo = {};
    notifyListeners();
  }
}
