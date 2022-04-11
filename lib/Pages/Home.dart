// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = "Home Page";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome To My Application",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
