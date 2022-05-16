// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:first_app/models/CatalogModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/AppDrawer.dart';
import '../Widgets/Item_Wid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    load();
    super.initState();
  }

  load() async {
    final data = await rootBundle.loadString("assets/files/catalog.json");
    final data1 = jsonDecode(data);
    final data2 = data1["products"];
  }

  @override
  Widget build(BuildContext context) {
    var title = "Home Page";
    final dummyList = List.generate(4, (index) => CatalogModel.item[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return Item_Wid(
                item: dummyList[index],
              );
            }),
      ),
      drawer: AppDrawer(),
    );
  }
}
