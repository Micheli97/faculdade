import 'package:campeonato/features/authentication/entity/user_entity.dart';

extension UserEntityModel on UserEntity {
  static UserEntity fromJson(Map json) {
    return UserEntity(
        email: json["email"], name: json["name"], token: json["token"]);
  }

  static Map<String, dynamic> toJson(UserEntity value) =>
      {"email": value.email, "name": value.name, "token": value.token};
}
