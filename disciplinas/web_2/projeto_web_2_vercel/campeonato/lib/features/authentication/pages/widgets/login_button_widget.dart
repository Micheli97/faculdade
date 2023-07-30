import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onPressed;
  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.green),),
      onPressed: onPressed,
      child: const Text("ENTRAR"),
    );
  }
}
