import 'package:campeonato/core/widgets/global_snackbar_widget.dart';
import 'package:campeonato/features/champions/entity/games_entity.dart';
import 'package:campeonato/features/champions/repository/champions_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
part 'champions_controller.g.dart';

class ChampionsController = _ChampionsControllerBase with _$ChampionsController;

abstract class _ChampionsControllerBase with Store {
  final ChampionsRepository championsRepository;

  _ChampionsControllerBase({required this.championsRepository});
  @observable
  bool isLoading = false;

  @observable
  bool isLoadingChampions = false;

  @observable
  ObservableList<GamesEntity> games = <GamesEntity>[].asObservable();

  Future<void> getChampionsGame() async {
    try {
      isLoading = true;
      final response = await championsRepository.getChampionsGame();
      games = response.asObservable();
      isLoading = false;
    } on DioError catch (e) {
      isLoading = false;
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter jogos", message: e.toString());
    } catch (e) {
      isLoading = false;
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter times", message: e.toString());
    }
  }

  Future<void> gerarCampeonato() async {
    try {
      isLoadingChampions = true;
      await championsRepository.gerarCampeaonato();
      isLoadingChampions = false;
    } on DioError catch (e) {
      isLoadingChampions = false;
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao gerar campeonato", message: e.toString());
    } catch (e) {
      isLoadingChampions = false;
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao gerar campeonato", message: e.toString());
    }
  }
}
