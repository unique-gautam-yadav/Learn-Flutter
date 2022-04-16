import 'package:flutter/material.dart';

import '../utils/MyRoutes.dart';

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  String _name = "";
  bool _pressedbutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      // ignore: prefer_const_constructors
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
                height: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome  $_name",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 16, 25, 16),
                  child: Column(children: [
                    TextFormField(
                      onChanged: (value) {
                        _name = value;
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter Your Username Here"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Your Password"),
                    )
                  ])),
              InkWell(
                onTap: () async {
                  setState(() {
                    _pressedbutton = true;
                  });
                  await Future.delayed(const Duration(milliseconds: 800));
                  Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  await Future.delayed(const Duration(milliseconds: 300));
                  setState(() {
                    _pressedbutton = false;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 750),
                  height: _pressedbutton ? 60 : 60,
                  width: _pressedbutton ? 60 : 150,
                  alignment: Alignment.center,
                  child: _pressedbutton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 50,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius:
                          BorderRadius.circular(_pressedbutton ? 60 : 8)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
