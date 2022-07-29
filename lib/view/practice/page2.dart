import 'package:flutter/material.dart';
import 'package:mvvm_practice/utiles/routes/route_name.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteName.page3);
            },
            child: const Text("Page2"),
          ),
        ),
      ),
    );
  }
}
