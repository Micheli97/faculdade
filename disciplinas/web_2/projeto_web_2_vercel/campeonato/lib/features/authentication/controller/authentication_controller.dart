import 'package:campeonato/core/widgets/global_snackbar_widget.dart';
import 'package:campeonato/features/authentication/entity/user_entity.dart';
import 'package:campeonato/features/authentication/repository/authentication_respository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'authentication_controller.g.dart';

class AuthenticationController = _AuthenticationControllerBase
    with _$AuthenticationController;

abstract class _AuthenticationControllerBase with Store {
  final AuthenticationRespository authenticationRepository;

  _AuthenticationControllerBase({required this.authenticationRepository});

  @observable
  UserEntity? userEntity;

  @observable
  bool isValidEmailField = true;

  @observable
  bool isValidPasswordField = true;

  bool get _validateCredentials => isValidEmailField && isValidPasswordField;

  @observable
  bool isLoadingAuthentication = false;


  bool get isAuthenticated => userEntity!.token.isNotEmpty;

  @action
  Future<void> authenticationLogin(
      {required String email, required String password}) async {
    _checkCredentials(email: email, password: password);

    if (_validateCredentials) {
      try {
        isLoadingAuthentication = true;
        final response = await authenticationRepository.authentication(
            email: email, password: password);

        setDataUser(response);
      } on DioError catch (e) {
        final message = e.response!.data ?? e.response!.data["message"];
        GlobalSnackBar.showErrorSnackBar(
            title: "Erro ao efetuar Login", message: message);
      } catch (e) {
        GlobalSnackBar.showErrorSnackBar(
            title: "Erro ao efetuar Login", message: e.toString());
      } finally {
        isLoadingAuthentication = false;
      }
    }
  }

  @action
  Future<bool> checkIsAuthenticated() async {
    final prefs = await SharedPreferences.getInstance();
    debugPrint((prefs.getString("token") != null).toString());
    return (prefs.getString("token") != null);
  }

  void setDataUser(UserEntity value) {
    userEntity = value;
  }

  void _checkCredentials({required String email, required String password}) {
    if (email.isEmpty && (password.isEmpty || password.trim().length < 3)) {
      isValidEmailField = false;
      isValidPasswordField = false;
    } else if (email.isEmpty) {
      isValidEmailField = false;
    } else if (password.isEmpty || password.trim().length < 3) {
      isValidPasswordField = false;
    } else {
      isValidEmailField = true;
      isValidPasswordField = true;
    }
  }

  Future<void> logout()async {
   SharedPreferences preferences = await SharedPreferences.getInstance();
   await preferences.clear();
   userEntity = null;
  }

}
