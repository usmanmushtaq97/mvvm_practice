import 'package:flutter/material.dart';
import 'package:mvvm_practice/utiles/routes/route_name.dart';
import 'package:mvvm_practice/view/home_screen.dart';
import 'package:mvvm_practice/view/loginview.dart';
import 'package:mvvm_practice/view/practice/page1.dart';
import 'package:mvvm_practice/view/signup_view.dart';
import '../../view/practice/page2.dart';
import '../../view/practice/page3.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RouteName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RouteName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignupView());
      case RouteName.page1:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Page1());
      case RouteName.page2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const  Page2());
      case RouteName.page3:
        return MaterialPageRoute(
            builder: (BuildContext context) => const  Page3());
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
