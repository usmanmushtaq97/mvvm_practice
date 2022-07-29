import 'package:flutter/material.dart';
import 'package:mvvm_practice/utiles/routes/route_name.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteName.page2);
          },
          child: const Text("Page1"),
        ),
      ),
    );
  }
}
