import 'package:flutter/cupertino.dart';

class AuthController {
  static bool _isAuthenticated = false;
  static var _user;

  static void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  static get isAuthenticated => _isAuthenticated;
  static get user => _user;
}
