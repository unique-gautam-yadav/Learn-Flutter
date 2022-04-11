import 'package:first_app/Pages/Home.dart';
import 'package:first_app/Pages/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {"/": (context) => Home(), "/login": (context) => Login()},
    );
  }
}
