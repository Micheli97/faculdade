import 'package:campeonato/core/widgets/global_snackbar_widget.dart';
import 'package:campeonato/features/players/entity/player_entity.dart';
import 'package:campeonato/features/players/repository/players_respository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
part 'player_controller.g.dart';

class PlayerController = _PlayerControllerBase with _$PlayerController;

abstract class _PlayerControllerBase with Store {
  PlayersRespository playersRespository;

  _PlayerControllerBase({required this.playersRespository});

  @observable
  ObservableList<PlayerEntity> players = <PlayerEntity>[].asObservable();

  @observable
  int totalTeams = 0;

  @observable
  PlayerEntity? playerEntity;

  @observable
  bool isLoading = false;

  @observable
  PlayerEntity? playerRegister;

  @observable
  bool isLoadingRegister = false;

  @observable
  bool isLoadingEdit = false;

  @observable
  String selectedTeam = "";

   @observable
  String selectedNameTeam = "";



  bool get checkFormIsValid => ((playerRegister?.name != null &&
          playerRegister!.name.isNotEmpty) &&
      playerRegister?.age != null &&
      playerRegister?.height != null &&
      (playerRegister?.photo != null && playerRegister!.photo.isNotEmpty) &&
      playerRegister?.weight != null &&
      playerRegister?.number != null &&
      (playerRegister?.position != null && playerRegister!.position.isNotEmpty));

  @action
  Future<ObservableList<PlayerEntity>> getPlayers() async {
    try {
      isLoading = true;
      final response = await playersRespository.getPlayers();
      players = response.asObservable();
      isLoading = false;
    } on DioError catch (e) {
      isLoading = false;
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter times", message: getErrorMessage(e));
    } catch (e) {
      isLoading = false;
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter times", message: e.toString());
    }
    return players;
  }

  String getErrorMessage(DioError error) {
    if (error.response?.data == null) {
      return error.message!;
    } else if (error.response!.data["mensagem"] != null) {
      return error.response!.data["mensagem"];
    } else {
      return error.response!.data;
    }
  }

  @action
  Future<void> getPlayerByTeamID({required String idTeam}) async {
    try {
      players.clear();
      final response =
          await playersRespository.getPlayersByTeamID(idTeam: idTeam);
      players = response.asObservable();
    } on DioError catch (e) {
      final message = e.response!.data ?? e.response!.data["message"];
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter time pelo ID", message: message);
    } catch (e) {
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter time pelo ID", message: e.toString());
    }
  }

  @action
  Future<void> registerPlayer() async {
    try {
      isLoadingRegister = true;
      await playersRespository.registerPlayer(value: playerRegister!);
    } on DioError catch (e) {
      final message =e.response!.data["message"];
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao registrar time", message: message);
    } catch (e) {
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao registrar time", message: e.toString());
    } finally {
      isLoadingRegister = false;
    }
  }

  @action
  Future<void> editPlayer({required String idPlayer}) async {
    try {
      isLoadingEdit = true;
      await playersRespository.editPlayer(
          value: playerRegister!, idPlayer: idPlayer);
      isLoadingEdit = false;
    } on DioError catch (e) {
      final message = e.response!.data ?? e.response!.data["message"];
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao editar time", message: message);
    } catch (e) {
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao editar time", message: e.toString());
    } finally {
      isLoadingEdit = false;
    }
  }

  @action
  Future<void> deletePlayer({required String idTeam}) async {
    try {
      await playersRespository.deletePlayer(idPlayer: idTeam);
    } on DioError catch (e) {
      final message = e.response!.data ?? e.response!.data["message"];
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao excluir time", message: message);
    } catch (e) {
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao excluir time", message: e.toString());
    }
  }

  @action
  void setPlayerRegister({
    String? name,
    String? height,
    String? weight,
    String? age,
    String? photo,
    String? position,
    String? number,
  }) {
    playerRegister = PlayerEntity(
        idTeam: "",
        name: "",
        photo: "",
        age: 0,
        height: 0,
        weight: 0,
        number: 0,
        position: "");

  
      playerRegister?.idTeam = selectedTeam;
    

    if (name != null && name.trim().isNotEmpty) {
      playerRegister?.name = name;
    }
    if (age != null && age.trim().isNotEmpty) {
      playerRegister?.age = int.parse(age);
    }
    if (height != null && height.trim().isNotEmpty) {
      playerRegister?.height = double.parse(height);
    }
    if (weight != null && weight.trim().isNotEmpty) {
      playerRegister?.weight = int.parse(weight);
    }
    if (position != null && position.trim().isNotEmpty) {
      playerRegister?.position = position;
    }
    if (number != null && number.trim().isNotEmpty) {
      playerRegister?.number = int.parse(number);
    }
    if (photo != null && photo.trim().isNotEmpty) {
      playerRegister?.photo = photo;
    }
  }
}
