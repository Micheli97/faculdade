import 'package:campeonato/features/authentication/controller/authentication_controller.dart';
import 'package:campeonato/features/authentication/repository/authentication_respository.dart';
import 'package:campeonato/features/authentication/repository/times_repository.dart';
import 'package:campeonato/features/champions/controller/champions_controller.dart';
import 'package:campeonato/features/champions/repository/champions_repository.dart';
import 'package:campeonato/features/players/controller/player_controller.dart';
import 'package:campeonato/features/players/repository/players_respository.dart';
import 'package:campeonato/features/team/controller/team_controller.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Inject {
  final getIt = GetIt.I;
  Dio dio = Dio();

  Future<void> _initSharedPreferences() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  }

  Future<void> initialize() async {
    await _initSharedPreferences();

    // Repositories
    getIt.registerLazySingleton<AuthenticationRespository>(
        () => AuthenticationRespository(dio: dio, sharedPreferences: getIt()));
    getIt.registerLazySingleton<TeamRepository>(
        () => TeamRepository(dio: dio, sharedPreferences: getIt()));
    getIt.registerLazySingleton<PlayersRespository>(
        () => PlayersRespository(dio: dio, sharedPreferences: getIt()));
         getIt.registerLazySingleton<ChampionsRepository>(
        () => ChampionsRepository(dio: dio, sharedPreferences: getIt()));

    // Controllers
    getIt.registerLazySingleton<AuthenticationController>(
        () => AuthenticationController(authenticationRepository: getIt()));
    getIt.registerLazySingleton<TeamController>(
        () => TeamController(teamRepository: getIt()));
    getIt.registerLazySingleton<PlayerController>(
        () => PlayerController(playersRespository: getIt()));
          getIt.registerLazySingleton<ChampionsController>(
        () => ChampionsController(championsRepository: getIt()));
  }
}
