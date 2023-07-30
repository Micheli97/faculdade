import 'package:campeonato/features/players/entity/player_entity.dart';

extension PlayerModel on PlayerEntity {
  static PlayerEntity fromJson(Map json) {
    return PlayerEntity(
        idTeam: json["_id"],
        age: json["age"],
        height: json["height"],
        name: json["name"],
        number: json["number"],
        photo: json["photo"],
        position: json["position"],
        weight: json["weight"]);
  }

  static Map<String, dynamic> toJson(PlayerEntity value) => {
        "_id": value.idTeam,
        "age": value.age,
        "height": value.height,
        "name": value.name,
        "number": value.number,
        "photo": value.photo,
        "position": value.position,
        "weight": value.weight,
      };
}
