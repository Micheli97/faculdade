import 'dart:convert';

import 'package:campeonato/features/authentication/entity/user_entity.dart';
import 'package:campeonato/features/authentication/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:dio/dio.dart';

import '../../../core/utils/contants.dart';

class AuthenticationRespository {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  AuthenticationRespository(
      {required this.dio, required this.sharedPreferences})
      : super();

  Future<UserEntity> authentication(
      {required String email, required String password}) async {
    try {
      final response = await dio.post(
          "${URL.baseURL}/users/login",
          data: jsonEncode({"email": email, 'password': password}));
      final convert = UserEntityModel.fromJson(response.data);
      sharedPreferences.setString("token", convert.token);
     final valor = sharedPreferences.getString("token");
      debugPrint("Authentication=$valor");

      return convert;
    } catch (e) {
      rethrow;
    }
  }
}
