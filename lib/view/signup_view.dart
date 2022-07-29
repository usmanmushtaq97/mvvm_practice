import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../res/componants/roundedbuttons.dart';
import '../utiles/routes/route_name.dart';
import '../utiles/utiles.dart';
import '../view_model/auth_view_model.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  ValueNotifier<bool> obscurePassword = ValueNotifier<bool>((false));

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailFocusNode.dispose();
    emailController.dispose();
    passwordFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginAuthViewModel = Provider.of<AuthViewModel>(context);
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
                  Utils.focusChange(
                      current: emailFocusNode,
                      nextFocus: passwordFocusNode,
                      context: context);
                },
              ),
              const SizedBox(height: 7),
              ValueListenableBuilder(
                  valueListenable: obscurePassword,
                  builder: (context, value, child) {
                    return TextFormField(
                      controller: passwordController,
                      obscureText: obscurePassword.value,
                      focusNode: passwordFocusNode,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock_clock_outlined),
                          labelText: "Password",
                          suffixIcon: InkWell(
                              onTap: () {
                                obscurePassword.value = !obscurePassword.value;
                              },
                              child: Icon(obscurePassword.value
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility))),
                    );
                  }),
              const SizedBox(height: 100),
              RoundedButton(
                  title: "SignUp",
                  loading: loginAuthViewModel.loading,
                  onPress: () {
                    if (emailController.text.isEmpty) {
                      Utils.flushBarErrorMessage("Enter Email", context);
                    }
                    else if (passwordController.text.isEmpty) {
                      Utils.flushBarErrorMessage("Enter Password", context);
                    }
                    else if (passwordController.text.length < 6) {
                      Utils.flushBarErrorMessage(
                          "Length Must greater then 6", context);
                    } else {
                      Map data = {
                        "login" : emailController.text.toString(),
                        "password": passwordController.text.toString(),
                      };
                      loginAuthViewModel.registerApi(data, context);
                    }}),
              SizedBox(height: 50),
              InkWell(
                  onTap:(){
                    Navigator.pushNamed(context, RouteName.login);
                  },
                  child: Text("Alredy have an Account? Login",style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      ),
    );
  }
}

