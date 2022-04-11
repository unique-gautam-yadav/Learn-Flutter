// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Gautam Yadav";

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To My Application"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
