import 'package:firebase/utils/keys/keys.dart';

class UserModel {
  int? uid;
  String? username;
  String? email;
  String? password;
  String? phone;
  String? profile;

  UserModel({
    this.uid,
    this.username,
    this.email,
    this.password,
    this.phone,
    this.profile,
  });

  Map<String, dynamic> toJson() => {
        UserKeys.uid: uid,
        UserKeys.username: username,
        UserKeys.email: email,
        UserKeys.password: password,
        UserKeys.phone: phone,
        UserKeys.profile: profile,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        uid: json[UserKeys.uid],
        username: json[UserKeys.username],
        email: json[UserKeys.email],
        password: json[UserKeys.password],
        phone: json[UserKeys.phone],
        profile: json[UserKeys.profile],
      );
}