// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/models/CatalogModel.dart';
import 'package:first_app/utils/MyThemes.dart';

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
        backgroundColor: MyThemes.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.item != null && CatalogModel.item.isNotEmpty)
                  CatalogList().expand()
                else
                  CircularProgressIndicator(),
              ],
            ),
          ),
        ));
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.color(MyThemes.darkBlueishColor).bold.xl5.make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.item.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.item[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogItemImage(img: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl.color(MyThemes.darkBlueishColor).bold.make(),
            catalog.desc.text.sm.gray500.make(),
            10.heightBox,
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Buy".text.make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyThemes.darkBlueishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class CatalogItemImage extends StatelessWidget {
  const CatalogItemImage({Key? key, required this.img})
      : assert(img != null),
        super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Image.network(img)
        .box
        .roundedLg
        .p8
        .color(MyThemes.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
