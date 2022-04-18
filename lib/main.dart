import 'package:first_app/Pages/Home.dart';
import 'package:first_app/Pages/Login.dart';
import 'package:first_app/Pages/Profile.dart';
import 'Pages/Login2.dart';
import 'package:first_app/utils/MyRoutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurple,
          brightness: Brightness.light,
          primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.login2Route,
      // initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const Home(),
        MyRoutes.loginRoute: (context) => const Login(),
        MyRoutes.login2Route: (context) => const Login2(),
        MyRoutes.profileRoute: (context) => const MyProfile()
      },
    );
  }
}
