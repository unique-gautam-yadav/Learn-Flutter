// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:first_app/models/CatalogModel.dart';
import 'package:first_app/utils/MyThemes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key, required this.catalog}) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(catalog.name),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.red800.bold.xl3.make(),
            ElevatedButton(
              onPressed: () {
                print("${catalog.name} Pressed !!");
              },
              child: "Buy".text.xl2.bold.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyThemes.darkBlueishColor),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
            ).h4(context).w32(context)
          ],
        ).p32(),
      ),
      body: Column(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).h40(context).w64(context)),
          Expanded(
            child: VxArc(
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              height: 25,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    catalog.name.text.xl5
                        .color(MyThemes.darkBlueishColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.gray500.make(),
                  ],
                ).py64(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
