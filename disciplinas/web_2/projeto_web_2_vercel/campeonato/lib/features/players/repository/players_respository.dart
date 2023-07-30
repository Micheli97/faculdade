import 'package:campeonato/features/players/entity/player_entity.dart';
import 'package:campeonato/features/players/models/players_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/contants.dart';

class PlayersRespository {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  PlayersRespository({required this.dio, required this.sharedPreferences})
      : super();

  Future<List<PlayerEntity>> getPlayers() async {
    try {
      SharedPreferences aqui = await SharedPreferences.getInstance();
      final user = aqui.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.get(
        "${URL.baseURL}/player/",
      );

      final convert = (response.data["jogadores"] as List)
          .map((e) => PlayerModel.fromJson(e))
          .toList();

      return convert;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PlayerEntity>> getPlayersByTeamID(
      {required String idTeam}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.get(
        "${URL.baseURL}/player/team/$idTeam",
      );

      final convert = (response.data["jogadores"] as List)
          .map((e) => PlayerModel.fromJson(e))
          .toList();

      return convert;
    } catch (e) {
      rethrow;
    }
  }

  Future<String> registerPlayer({required PlayerEntity value}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.post(
        "${URL.baseURL}/player/register",
        data: {
          "id_team": value.idTeam,
          "age": value.age,
          "height": value.height,
          "name": value.name,
          "number": value.number,
          "photo": value.photo,
          "position": value.position,
          "weight": value.weight,
        },
      );

      return response.data["message"];
    } catch (e) {
      rethrow;
    }
  }

  Future<String> editPlayer(
      {required String idPlayer, required PlayerEntity value}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.put(
          "${URL.baseURL}/player/$idPlayer",
          data: {
            "age": value.age,
            "height": value.height,
            "name": value.name,
            "number": value.number,
            "photo": value.photo,
            "position": value.position,
            "weight": value.weight,
          });

      return response.data["message"];
    } catch (e) {
      rethrow;
    }
  }

  Future<String> deletePlayer({required String idPlayer}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.delete(
        "${URL.baseURL}/player/$idPlayer",
      );

      return response.data.toString();
    } catch (e) {
      rethrow;
    }
  }
}
