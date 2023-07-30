// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthenticationController on _AuthenticationControllerBase, Store {
  late final _$userEntityAtom =
      Atom(name: '_AuthenticationControllerBase.userEntity', context: context);

  @override
  UserEntity? get userEntity {
    _$userEntityAtom.reportRead();
    return super.userEntity;
  }

  @override
  set userEntity(UserEntity? value) {
    _$userEntityAtom.reportWrite(value, super.userEntity, () {
      super.userEntity = value;
    });
  }

  late final _$isValidEmailFieldAtom = Atom(
      name: '_AuthenticationControllerBase.isValidEmailField',
      context: context);

  @override
  bool get isValidEmailField {
    _$isValidEmailFieldAtom.reportRead();
    return super.isValidEmailField;
  }

  @override
  set isValidEmailField(bool value) {
    _$isValidEmailFieldAtom.reportWrite(value, super.isValidEmailField, () {
      super.isValidEmailField = value;
    });
  }

  late final _$isValidPasswordFieldAtom = Atom(
      name: '_AuthenticationControllerBase.isValidPasswordField',
      context: context);

  @override
  bool get isValidPasswordField {
    _$isValidPasswordFieldAtom.reportRead();
    return super.isValidPasswordField;
  }

  @override
  set isValidPasswordField(bool value) {
    _$isValidPasswordFieldAtom.reportWrite(value, super.isValidPasswordField,
        () {
      super.isValidPasswordField = value;
    });
  }

  late final _$isLoadingAuthenticationAtom = Atom(
      name: '_AuthenticationControllerBase.isLoadingAuthentication',
      context: context);

  @override
  bool get isLoadingAuthentication {
    _$isLoadingAuthenticationAtom.reportRead();
    return super.isLoadingAuthentication;
  }

  @override
  set isLoadingAuthentication(bool value) {
    _$isLoadingAuthenticationAtom
        .reportWrite(value, super.isLoadingAuthentication, () {
      super.isLoadingAuthentication = value;
    });
  }

  late final _$authenticationLoginAsyncAction = AsyncAction(
      '_AuthenticationControllerBase.authenticationLogin',
      context: context);

  @override
  Future<void> authenticationLogin(
      {required String email, required String password}) {
    return _$authenticationLoginAsyncAction
        .run(() => super.authenticationLogin(email: email, password: password));
  }

  late final _$checkIsAuthenticatedAsyncAction = AsyncAction(
      '_AuthenticationControllerBase.checkIsAuthenticated',
      context: context);

  @override
  Future<bool> checkIsAuthenticated() {
    return _$checkIsAuthenticatedAsyncAction
        .run(() => super.checkIsAuthenticated());
  }

  @override
  String toString() {
    return '''
userEntity: ${userEntity},
isValidEmailField: ${isValidEmailField},
isValidPasswordField: ${isValidPasswordField},
isLoadingAuthentication: ${isLoadingAuthentication}
    ''';
  }
}
