import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = "Login Page";
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("This Is Login Page"),
      ),
    );
  }
}
