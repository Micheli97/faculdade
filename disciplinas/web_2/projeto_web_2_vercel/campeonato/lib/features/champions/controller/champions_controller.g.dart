// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChampionsController on _ChampionsControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ChampionsControllerBase.isLoading', context: context);

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

  late final _$isLoadingChampionsAtom = Atom(
      name: '_ChampionsControllerBase.isLoadingChampions', context: context);

  @override
  bool get isLoadingChampions {
    _$isLoadingChampionsAtom.reportRead();
    return super.isLoadingChampions;
  }

  @override
  set isLoadingChampions(bool value) {
    _$isLoadingChampionsAtom.reportWrite(value, super.isLoadingChampions, () {
      super.isLoadingChampions = value;
    });
  }

  late final _$gamesAtom =
      Atom(name: '_ChampionsControllerBase.games', context: context);

  @override
  ObservableList<GamesEntity> get games {
    _$gamesAtom.reportRead();
    return super.games;
  }

  @override
  set games(ObservableList<GamesEntity> value) {
    _$gamesAtom.reportWrite(value, super.games, () {
      super.games = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLoadingChampions: ${isLoadingChampions},
games: ${games}
    ''';
  }
}
