import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static bool _isAuthenticated = false;
  static var _user;

  static get isAuthenticated => _isAuthenticated;
  static get user => _user;

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

  static Future<void> saveUser(var user) async {
    final shared = await SharedPreferences.getInstance();
    await shared.setString("user", user);
  }

  static Future<void> restore() async {
    final shared = await SharedPreferences.getInstance();
    final String? user = shared.getString("user");
    return;
  }
}
