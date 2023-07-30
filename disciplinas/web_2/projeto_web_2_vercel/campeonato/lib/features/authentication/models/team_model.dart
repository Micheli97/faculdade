import 'package:campeonato/features/authentication/entity/team_entity.dart';

extension TeamModel on TeamEntity {
  static TeamEntity fromJson(Map json) {
    return TeamEntity(
      id: json["_id"],
      name: json["name"],
      photo: json["badge_photo"],
      city: json["city"],
      coach: json["coach"],
      website: json["website"],
    );
  }

  static Map<String, dynamic> toJson(TeamEntity value) => {
        "name": value.name,
        "badge_photo": value.photo,
        "city": value.city,
        "coach": value.coach,
        "website": value.website
      };
}
