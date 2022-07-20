import 'package:flutter/material.dart';
import 'package:mvvm_practice/utiles/utiles.dart';

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
  ValueNotifier<bool> obscurePassword = ValueNotifier<bool>((true));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true,
        ),
        body: Container(
           margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                onFieldSubmitted: (value) {
                 Utils.focusChange(current: emailFocusNode, nextFocus: passwordFocusNode, context: context);
                },
              ),
             const SizedBox(height: 7),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                focusNode: passwordFocusNode,
                decoration: const InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock_clock_outlined),
                  labelText: "Password",
                  suffixIcon: Icon(Icons.visibility_off_outlined)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
