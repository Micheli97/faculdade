import 'package:campeonato/features/champions/entity/games_entity.dart';

extension GamesModel on GamesEntity {
  static GamesEntity fromJson(Map json) {
    return GamesEntity(
      id: json["_id"],
      timeA: json["timeA"],
      timeB: json["timeB"],
    );
  }
}
