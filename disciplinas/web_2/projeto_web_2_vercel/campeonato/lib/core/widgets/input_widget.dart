import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Function()? sufixOnPressed;
  final bool showSuffix;
  final Function(String)? onChanged;
  const InputWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      this.obscureText = false,
      this.sufixOnPressed,
      this.showSuffix = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: showSuffix
              ? IconButton(
                  onPressed: sufixOnPressed,
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility))
              : null),
    );
  }
}
