import 'package:flutter/cupertino.dart';
import 'package:payflow/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
//  static bool _isAuthenticated = false;
  static UserModel? _user;

//  static get isAuthenticated => _isAuthenticated;
  static get user => _user!;

  static void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      saveUser(user);
      _user = user;
//      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
//      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  static Future<void> saveUser(var user) async {
    final shared = await SharedPreferences.getInstance();
    await shared.setString("user", user.toJson());
  }

  static Future<void> restore(BuildContext context) async {
    final shared = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 2));
    if (shared.containsKey("user")) {
      final String? user = shared.getString("user");
      //    _isAuthenticated = user != null ? true : false;
      setUser(context, UserModel.fromJson(user!));
    } else {
      setUser(context, null);
    }
  }
}
