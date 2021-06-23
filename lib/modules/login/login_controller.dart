import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/models/user_model.dart';
import 'package:payflow/shared/auth/auth_controller.dart';

class LoginController {
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      // convert response to usermodel
      final UserModel user = UserModel(
        id: response!.id,
        name: response.displayName!,
        email: response.email,
        profile: response.photoUrl,
      );
      AuthController.setUser(context, user);
    } catch (error) {
      AuthController.setUser(context, null);
    }
  }
}
