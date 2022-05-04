// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:first_app/models/CatalogModel.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppDrawer.dart';
import '../Widgets/Item_Wid.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(4, (index) => CatalogModel.items[0]);
    var title = "Home Page";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dumyList.length,
            itemBuilder: (context, index) {
              return Item_Wid(
                item: dumyList[index],
              );
            }),
      ),
      drawer: AppDrawer(),
    );
  }
}
