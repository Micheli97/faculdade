import 'package:campeonato/core/app/app.dart';
import 'package:flutter/material.dart';

class GlobalSnackBar{
    static showErrorSnackBar({
    required String title,
    required String message,
  }) {
    ScaffoldMessenger.of(navigatorKey.currentContext as BuildContext)
        .showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title),
         const  SizedBox(height: 5),
          Text(message),
        ],
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ));
  }
}