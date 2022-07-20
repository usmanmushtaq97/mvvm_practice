import 'package:flutter/material.dart';
import 'package:mvvm_practice/utiles/routes/route_name.dart';
import 'package:mvvm_practice/view/home_screen.dart';
import 'package:mvvm_practice/view/loginview.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RouteName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Column(
                    children: const [Text("No Routes define")],
                  ),
                ));
    }
  }
}
