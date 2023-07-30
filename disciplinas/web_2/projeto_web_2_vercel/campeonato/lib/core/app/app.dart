import 'package:campeonato/features/authentication/loading_page.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campeonato',
      navigatorKey: navigatorKey,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  LoadingPage(),
    );
  }
}
