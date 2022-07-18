import 'package:flutter/material.dart';
import 'package:mvvm_practice/view/home_screen.dart';

import '../utiles/routes/route_name.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          InkWell(
              onTap:(){ Navigator.pushNamed(context, RouteName.home);} ,
              child: const Text("Login"))
        ],
      ),
    );
  }
}
