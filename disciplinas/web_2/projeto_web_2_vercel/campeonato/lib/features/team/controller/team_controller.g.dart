// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TeamController on _TeamControllerBase, Store {
  late final _$teamsAtom =
      Atom(name: '_TeamControllerBase.teams', context: context);

  @override
  ObservableList<TeamEntity> get teams {
    _$teamsAtom.reportRead();
    return super.teams;
  }

  @override
  set teams(ObservableList<TeamEntity> value) {
    _$teamsAtom.reportWrite(value, super.teams, () {
      super.teams = value;
    });
  }

  late final _$totalTeamsAtom =
      Atom(name: '_TeamControllerBase.totalTeams', context: context);

  @override
  int get totalTeams {
    _$totalTeamsAtom.reportRead();
    return super.totalTeams;
  }

  @override
  set totalTeams(int value) {
    _$totalTeamsAtom.reportWrite(value, super.totalTeams, () {
      super.totalTeams = value;
    });
  }

  late final _$teamEntityAtom =
      Atom(name: '_TeamControllerBase.teamEntity', context: context);

  @override
  TeamEntity? get teamEntity {
    _$teamEntityAtom.reportRead();
    return super.teamEntity;
  }

  @override
  set teamEntity(TeamEntity? value) {
    _$teamEntityAtom.reportWrite(value, super.teamEntity, () {
      super.teamEntity = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_TeamControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$teamRegisterAtom =
      Atom(name: '_TeamControllerBase.teamRegister', context: context);

  @override
  TeamEntity? get teamRegister {
    _$teamRegisterAtom.reportRead();
    return super.teamRegister;
  }

  @override
  set teamRegister(TeamEntity? value) {
    _$teamRegisterAtom.reportWrite(value, super.teamRegister, () {
      super.teamRegister = value;
    });
  }

  late final _$isLoadingRegisterAtom =
      Atom(name: '_TeamControllerBase.isLoadingRegister', context: context);

  @override
  bool get isLoadingRegister {
    _$isLoadingRegisterAtom.reportRead();
    return super.isLoadingRegister;
  }

  @override
  set isLoadingRegister(bool value) {
    _$isLoadingRegisterAtom.reportWrite(value, super.isLoadingRegister, () {
      super.isLoadingRegister = value;
    });
  }

  late final _$isLoadingEditAtom =
      Atom(name: '_TeamControllerBase.isLoadingEdit', context: context);

  @override
  bool get isLoadingEdit {
    _$isLoadingEditAtom.reportRead();
    return super.isLoadingEdit;
  }

  @override
  set isLoadingEdit(bool value) {
    _$isLoadingEditAtom.reportWrite(value, super.isLoadingEdit, () {
      super.isLoadingEdit = value;
    });
  }

  late final _$getTeamsAsyncAction =
      AsyncAction('_TeamControllerBase.getTeams', context: context);

  @override
  Future<ObservableList<TeamEntity>> getTeams() {
    return _$getTeamsAsyncAction.run(() => super.getTeams());
  }

  late final _$getTotalTeamsAsyncAction =
      AsyncAction('_TeamControllerBase.getTotalTeams', context: context);

  @override
  Future<void> getTotalTeams() {
    return _$getTotalTeamsAsyncAction.run(() => super.getTotalTeams());
  }

  late final _$getTeamByIDAsyncAction =
      AsyncAction('_TeamControllerBase.getTeamByID', context: context);

  @override
  Future<void> getTeamByID({required int idTeam}) {
    return _$getTeamByIDAsyncAction
        .run(() => super.getTeamByID(idTeam: idTeam));
  }

  late final _$registerTeamAsyncAction =
      AsyncAction('_TeamControllerBase.registerTeam', context: context);

  @override
  Future<void> registerTeam() {
    return _$registerTeamAsyncAction.run(() => super.registerTeam());
  }

  late final _$editTeamAsyncAction =
      AsyncAction('_TeamControllerBase.editTeam', context: context);

  @override
  Future<void> editTeam({required String idTeam}) {
    return _$editTeamAsyncAction.run(() => super.editTeam(idTeam: idTeam));
  }

  late final _$deleteTeamAsyncAction =
      AsyncAction('_TeamControllerBase.deleteTeam', context: context);

  @override
  Future<void> deleteTeam({required String idTeam}) {
    return _$deleteTeamAsyncAction.run(() => super.deleteTeam(idTeam: idTeam));
  }

  late final _$_TeamControllerBaseActionController =
      ActionController(name: '_TeamControllerBase', context: context);

  @override
  void setTeamRegister(
      {String? name,
      String? city,
      String? coach,
      String? website,
      String? photo}) {
    final _$actionInfo = _$_TeamControllerBaseActionController.startAction(
        name: '_TeamControllerBase.setTeamRegister');
    try {
      return super.setTeamRegister(
          name: name, city: city, coach: coach, website: website, photo: photo);
    } finally {
      _$_TeamControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
teams: ${teams},
totalTeams: ${totalTeams},
teamEntity: ${teamEntity},
isLoading: ${isLoading},
teamRegister: ${teamRegister},
isLoadingRegister: ${isLoadingRegister},
isLoadingEdit: ${isLoadingEdit}
    ''';
  }
}
