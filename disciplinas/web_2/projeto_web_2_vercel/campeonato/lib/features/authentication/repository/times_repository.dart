import 'package:campeonato/core/utils/contants.dart';
import 'package:campeonato/features/authentication/entity/team_entity.dart';
import 'package:campeonato/features/authentication/models/team_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeamRepository {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  TeamRepository({required this.dio, required this.sharedPreferences})
      : super();

  Future<List<TeamEntity>> getTeams() async {
    try {
      SharedPreferences aqui = await SharedPreferences.getInstance();
      final user = aqui.getString("token");
      dio.options.headers["token"] = user;

      debugPrint("Authentication=$user");

     
      final response = await dio.get(
        "${URL.baseURL}/teams"
       // "${URL.BASE_URL}//teams/",
      );

      final convert = (response.data["total"] as List)
          .map((e) => TeamModel.fromJson(e))
          .toList();

      return convert;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getTotalTeams() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.get(
        "${URL.baseURL}/teams/team_count",
      );

      return response.data["total"];
    } catch (e) {
      rethrow;
    }
  }

  Future<TeamEntity> getTeamByID({required int idTeam}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.get(
        "${URL.baseURL}/teams/$idTeam",
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> registerTeam({required TeamEntity value}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.post(
        "${URL.baseURL}/teams/register",
        data: {
          "name": value.name,
          "badge_photo": value.photo,
          "city": value.city,
          "coach": value.coach,
          "website": value.website,
        },
      );

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<String> editTeam({required String idTeam, required TeamEntity value}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.put(
          "${URL.baseURL}/teams/$idTeam",
          data: {
            "name": value.name,
            "badge_photo": value.photo,
            "city": value.city,
            "coach": value.coach,
            "website": value.website,
          });

      return response.data["message"];
    } catch (e) {
      rethrow;
    }
  }

  Future<String> deleteTeam({required String idTeam}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final user = prefs.getString("token");
      dio.options.headers["token"] = user;

      final response = await dio.delete(
        "${URL.baseURL}/teams/$idTeam",
      );

      return response.data.toString();
    } catch (e) {
      rethrow;
    }
  }
}
