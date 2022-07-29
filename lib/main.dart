import 'package:flutter/material.dart';
import 'package:mvvm_practice/utiles/routes/route_name.dart';
import 'package:mvvm_practice/utiles/routes/routes.dart';
import 'package:mvvm_practice/view/home_screen.dart';
import 'package:mvvm_practice/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> AuthViewModel()),
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouteName.page1,
      onGenerateRoute: Routes.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    ) ,
    );
  }

}
