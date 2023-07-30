import 'package:campeonato/features/authentication/pages/form_authentication_widget.dart';
import 'package:campeonato/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'controller/authentication_controller.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final _authenticationStore = GetIt.I.get<AuthenticationController>();
  late ReactionDisposer _disposer;


  @override
  void didChangeDependencies() async {
      _disposer = reaction((_) => _authenticationStore.isAuthenticated, (loginSucess) {
      if (loginSucess == true) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const HomePage()));
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FormAuthenticationWidget(),
            )
          ],
        ),
      ),
    );
  }
}
