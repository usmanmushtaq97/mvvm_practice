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
  ValueNotifier<bool> obscurePassword = ValueNotifier<bool>((false));
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
              ValueListenableBuilder(valueListenable: obscurePassword, builder: (context, value, child){
                return  TextFormField(
                  controller: passwordController,
                  obscureText: obscurePassword.value,
                  focusNode: passwordFocusNode,
                  decoration:  InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                      labelText: "Password",
                      suffixIcon: InkWell(
                          onTap: (){
                            obscurePassword.value = ! obscurePassword.value;
                          },
                          child:  Icon( obscurePassword.value? Icons.visibility_off_outlined
                              : Icons.visibility
                          ))
                  ),
                );
              }),

            ],
          ),
        ),
      ),
    );
  }
}
