import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: emailController,
              focusNode: emailFocusNode,

              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
              ),
              onFieldSubmitted: (value){
                FocusScope.of(context).requestFocus(passwordFocusNode);
              },
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              focusNode: passwordFocusNode,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password),
                labelText: "Password",

              ),
            ),
          ],
        ),
      ),
    );
  }
}
