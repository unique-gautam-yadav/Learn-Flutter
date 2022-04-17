import 'package:first_app/Pages/Home.dart';
import 'package:first_app/Pages/Login.dart';
import 'Pages/Login2.dart';
import 'package:first_app/utils/MyRoutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // // debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      // darkTheme: ThemeData(primaryColor: Colors.black),
      // theme: ThemeData(
      //     brightness: Brightness.light, primaryColor: Colors.deepPurpleAccent),
      initialRoute: "/login2",
      routes: {
        MyRoutes.HomeRoute: (context) => const Home(),
        MyRoutes.LoginRoute: (context) => const Login(),
        MyRoutes.Login2Route: (context) => const Login2()
      },
    );
  }
}
