import 'package:campeonato/features/authentication/authentication_page.dart';
import 'package:campeonato/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controller/authentication_controller.dart';

class LoadingPage extends StatelessWidget {
  LoadingPage({super.key});

  final _authenticationStore = GetIt.I.get<AuthenticationController>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _authenticationStore.checkIsAuthenticated(),
      builder: (context, snapshot) {
        if((snapshot.connectionState == ConnectionState.done &&
            snapshot.data == false)) {
          return const AuthenticationPage();
        } else if(snapshot.connectionState == ConnectionState.done &&
            snapshot.data == true) {
          return const HomePage();
        }   else {
          return const Scaffold(
              body: Center(
            child: CircularProgressIndicator(),
          ));
        }
      },
    );
  }
}
