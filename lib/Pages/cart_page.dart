import 'package:first_app/utils/MyThemes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      appBar: AppBar(
        backgroundColor: MyThemes.creamColor,
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: Center(
        child: "Cart Page".text.xl5.make(),
      ),
    );
  }
}
