// ignore: file_names
// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_null_comparison

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
    await Future.delayed(Duration(seconds: 3));
    final data = await rootBundle.loadString("assets/files/catalog.json");
    final data1 = jsonDecode(data);
    final data2 = data1["products"];
    CatalogModel.item =
        List.from(data2).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var title = "Home Page";
    // final dummyList = List.generate(4, (index) => CatalogModel.item[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CatalogModel.item != null && CatalogModel.item.isNotEmpty
              ? GridView.builder(
                  itemCount: CatalogModel.item.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.item[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: GridTile(
                        child: Image.network(item.image),
                        header: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(color: Colors.deepPurple),
                        ),
                        footer: Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "\$${item.price.toString()}",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                    );
                  })
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: AppDrawer(),
    );
  }
}
