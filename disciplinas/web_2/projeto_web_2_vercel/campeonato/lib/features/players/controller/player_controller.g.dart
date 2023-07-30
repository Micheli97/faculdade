// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlayerController on _PlayerControllerBase, Store {
  late final _$playersAtom =
      Atom(name: '_PlayerControllerBase.players', context: context);

  @override
  ObservableList<PlayerEntity> get players {
    _$playersAtom.reportRead();
    return super.players;
  }

  @override
  set players(ObservableList<PlayerEntity> value) {
    _$playersAtom.reportWrite(value, super.players, () {
      super.players = value;
    });
  }

  late final _$totalTeamsAtom =
      Atom(name: '_PlayerControllerBase.totalTeams', context: context);

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

  late final _$playerEntityAtom =
      Atom(name: '_PlayerControllerBase.playerEntity', context: context);

  @override
  PlayerEntity? get playerEntity {
    _$playerEntityAtom.reportRead();
    return super.playerEntity;
  }

  @override
  set playerEntity(PlayerEntity? value) {
    _$playerEntityAtom.reportWrite(value, super.playerEntity, () {
      super.playerEntity = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_PlayerControllerBase.isLoading', context: context);

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

  late final _$playerRegisterAtom =
      Atom(name: '_PlayerControllerBase.playerRegister', context: context);

  @override
  PlayerEntity? get playerRegister {
    _$playerRegisterAtom.reportRead();
    return super.playerRegister;
  }

  @override
  set playerRegister(PlayerEntity? value) {
    _$playerRegisterAtom.reportWrite(value, super.playerRegister, () {
      super.playerRegister = value;
    });
  }

  late final _$isLoadingRegisterAtom =
      Atom(name: '_PlayerControllerBase.isLoadingRegister', context: context);

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
      Atom(name: '_PlayerControllerBase.isLoadingEdit', context: context);

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

  late final _$selectedTeamAtom =
      Atom(name: '_PlayerControllerBase.selectedTeam', context: context);

  @override
  String get selectedTeam {
    _$selectedTeamAtom.reportRead();
    return super.selectedTeam;
  }

  @override
  set selectedTeam(String value) {
    _$selectedTeamAtom.reportWrite(value, super.selectedTeam, () {
      super.selectedTeam = value;
    });
  }

  late final _$selectedNameTeamAtom =
      Atom(name: '_PlayerControllerBase.selectedNameTeam', context: context);

  @override
  String get selectedNameTeam {
    _$selectedNameTeamAtom.reportRead();
    return super.selectedNameTeam;
  }

  @override
  set selectedNameTeam(String value) {
    _$selectedNameTeamAtom.reportWrite(value, super.selectedNameTeam, () {
      super.selectedNameTeam = value;
    });
  }

  late final _$getPlayersAsyncAction =
      AsyncAction('_PlayerControllerBase.getPlayers', context: context);

  @override
  Future<ObservableList<PlayerEntity>> getPlayers() {
    return _$getPlayersAsyncAction.run(() => super.getPlayers());
  }

  late final _$getPlayerByTeamIDAsyncAction =
      AsyncAction('_PlayerControllerBase.getPlayerByTeamID', context: context);

  @override
  Future<void> getPlayerByTeamID({required String idTeam}) {
    return _$getPlayerByTeamIDAsyncAction
        .run(() => super.getPlayerByTeamID(idTeam: idTeam));
  }

  late final _$registerPlayerAsyncAction =
      AsyncAction('_PlayerControllerBase.registerPlayer', context: context);

  @override
  Future<void> registerPlayer() {
    return _$registerPlayerAsyncAction.run(() => super.registerPlayer());
  }

  late final _$editPlayerAsyncAction =
      AsyncAction('_PlayerControllerBase.editPlayer', context: context);

  @override
  Future<void> editPlayer({required String idPlayer}) {
    return _$editPlayerAsyncAction
        .run(() => super.editPlayer(idPlayer: idPlayer));
  }

  late final _$deletePlayerAsyncAction =
      AsyncAction('_PlayerControllerBase.deletePlayer', context: context);

  @override
  Future<void> deletePlayer({required String idTeam}) {
    return _$deletePlayerAsyncAction
        .run(() => super.deletePlayer(idTeam: idTeam));
  }

  late final _$_PlayerControllerBaseActionController =
      ActionController(name: '_PlayerControllerBase', context: context);

  @override
  void setPlayerRegister(
      {String? name,
      String? height,
      String? weight,
      String? age,
      String? photo,
      String? position,
      String? number}) {
    final _$actionInfo = _$_PlayerControllerBaseActionController.startAction(
        name: '_PlayerControllerBase.setPlayerRegister');
    try {
      return super.setPlayerRegister(
          name: name,
          height: height,
          weight: weight,
          age: age,
          photo: photo,
          position: position,
          number: number);
    } finally {
      _$_PlayerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
players: ${players},
totalTeams: ${totalTeams},
playerEntity: ${playerEntity},
isLoading: ${isLoading},
playerRegister: ${playerRegister},
isLoadingRegister: ${isLoadingRegister},
isLoadingEdit: ${isLoadingEdit},
selectedTeam: ${selectedTeam},
selectedNameTeam: ${selectedNameTeam}
    ''';
  }
}
