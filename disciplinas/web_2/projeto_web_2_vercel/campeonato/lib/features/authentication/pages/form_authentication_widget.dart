import 'package:campeonato/core/widgets/input_widget.dart';
import 'package:campeonato/features/authentication/controller/authentication_controller.dart';
import 'package:campeonato/features/authentication/pages/widgets/login_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import '../../../core/utils/contants.dart';

class FormAuthenticationWidget extends StatefulWidget {
  const FormAuthenticationWidget({super.key});

  @override
  State<FormAuthenticationWidget> createState() =>
      _FormAuthenticationWidgetState();
}

class _FormAuthenticationWidgetState extends State<FormAuthenticationWidget> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _authenticationStore = GetIt.I.get<AuthenticationController>();

  bool _showPassword = false;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        children: [
          SvgPicture.asset(Images.logo, height: 150, width: 150),
          const SizedBox(height: 15),
          const Text(
            "TeamChamp",
            style: TextStyle(fontFamily: "Roboto", fontSize: 20),
          ),
          const SizedBox(height: 50),
          Observer(builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputWidget(controller: _email, hintText: "E-mail"),
                _authenticationStore.isValidEmailField
                    ? const SizedBox()
                    : const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Campo obrigatório",
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                      ),
                const SizedBox(height: 16),
                InputWidget(
                  controller: _password,
                  hintText: "Password",
                  obscureText: !_showPassword,
                  showSuffix: true,
                  sufixOnPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
                _authenticationStore.isValidPasswordField
                    ? const SizedBox()
                    : const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Campo obrigatório",
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                      )
              ],
            );
          }),
          const SizedBox(height: 50),
          _authenticationStore.isLoadingAuthentication
              ? const CircularProgressIndicator()
              : SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: LoginButton(onPressed: () async {
                    await _authenticationStore.authenticationLogin(
                        email: _email.text, password: _password.text);
                    await _authenticationStore.checkIsAuthenticated();
                  }),
                )
        ],
      ),
    );
  }
}
