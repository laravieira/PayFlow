import 'dart:convert';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String? profile;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      this.profile});

  factory UserModel.fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return UserModel(
      id: map['id']!,
      name: map['name']!,
      email: map['email']!,
      profile: map['profile'],
    );
  }

  String toJson() => jsonEncode({
        "id": id,
        "name": name,
        "email": email,
        "profile": profile,
      });
}
