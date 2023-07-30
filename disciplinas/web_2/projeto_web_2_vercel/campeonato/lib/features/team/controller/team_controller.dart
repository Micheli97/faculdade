import 'package:campeonato/core/widgets/global_snackbar_widget.dart';
import 'package:campeonato/features/authentication/entity/team_entity.dart';
import 'package:campeonato/features/authentication/repository/times_repository.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
part 'team_controller.g.dart';

class TeamController = _TeamControllerBase with _$TeamController;

abstract class _TeamControllerBase with Store {
  TeamRepository teamRepository;

  _TeamControllerBase({required this.teamRepository});

  @observable
  ObservableList<TeamEntity> teams = <TeamEntity>[].asObservable();

  @observable
  int totalTeams = 0;

  @observable
  TeamEntity? teamEntity;

  @observable
  bool isLoading = false;

  @observable
  TeamEntity? teamRegister;

  @observable
  bool isLoadingRegister = false;

   @observable
  bool isLoadingEdit = false;

  int get ammountTeamsRegister => totalTeams;

  bool get checkFormIsValid => (teamRegister?.name != null &&
      teamRegister?.city != null &&
      teamRegister?.coach != null &&
      teamRegister?.photo != null &&
      teamRegister?.website != null);

  @action
  Future<ObservableList<TeamEntity>> getTeams() async {
    try {
      isLoading = true;
      final response = await teamRepository.getTeams();
      teams = response.asObservable();
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
    return teams;
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
  Future<void> getTotalTeams() async {
    try {
      final response = await teamRepository.getTotalTeams();
      totalTeams = response;
    } on DioError catch (e) {
      final message = e.response!.data ?? e.response!.data["message"];
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter quantidade de times cadastrados",
          message: message);
    } catch (e) {
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao obter quantidade de times cadastrados",
          message: e.toString());
    }
  }

  @action
  Future<void> getTeamByID({required int idTeam}) async {
    try {
      final response = await teamRepository.getTeamByID(idTeam: idTeam);
      teamEntity = response;
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
  Future<void> registerTeam() async {
    try {
      isLoadingRegister = true;
      await teamRepository.registerTeam(value: teamRegister!);
    } on DioError catch (e) {
      final message = e.response!.data ?? e.response!.data["message"];
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
  Future<void> editTeam({required String idTeam}) async {
    try {
      isLoadingEdit = true;
      await teamRepository.editTeam(value: teamRegister!, idTeam: idTeam);
      isLoadingEdit = false;
    } on DioError catch (e) {
      final message = e.response!.data ?? e.response!.data["message"];
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao editar time", message: message);
    } catch (e) {
      GlobalSnackBar.showErrorSnackBar(
          title: "Erro ao editar time", message: e.toString());
    }finally{
      isLoadingEdit = false;
    }
  }

  @action
  Future<void> deleteTeam({required String idTeam}) async {
    try {
      await teamRepository.deleteTeam(idTeam: idTeam);
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
  void setTeamRegister(
      {String? name,
      String? city,
      String? coach,
      String? website,
      String? photo}) {
    teamRegister = TeamEntity(
        id: "", name: "", photo: "", city: "", coach: "", website: "");

    if (name != null && name.trim().isNotEmpty) {
      teamRegister?.name = name;
    }
    if (city != null && city.trim().isNotEmpty) {
      teamRegister?.city = city;
    }
    if (coach != null && coach.trim().isNotEmpty) {
      teamRegister?.coach = coach;
    }
    if (website != null && website.trim().isNotEmpty) {
      teamRegister?.website = website;
    }
    if (photo != null && photo.trim().isNotEmpty) {
      teamRegister?.photo = photo;
    }
  }
}
