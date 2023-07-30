import 'package:campeonato/features/champions/models/games_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:campeonato/features/champions/entity/games_entity.dart';

import '../../../core/utils/contants.dart';

class ChampionsRepository {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  ChampionsRepository({required this.dio, required this.sharedPreferences});

  Future<List<GamesEntity>> getChampionsGame() async {
    try {
      final user = sharedPreferences.getString("token");
      dio.options.headers["token"] = user;
      final response = await dio.get(
          "${URL.baseURL}/champions/games");

      final convert = (response.data as List)
          .map((e) => GamesModel.fromJson(e))
          .toList();

      return convert;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> gerarCampeaonato() async {
    try {
      final user = sharedPreferences.getString("token");
      dio.options.headers["token"] = user;
      final response = await dio.post(
          "${URL.baseURL}/champions/");

      return response.statusCode!;
    } catch (e) {
      rethrow;
    }
  }
}
