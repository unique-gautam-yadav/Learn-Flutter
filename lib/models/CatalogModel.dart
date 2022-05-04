class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

class CatalogModel {
  static final items = [
    Item(
        id: "001",
        name: "IPhone 13",
        desc: "IPhone generation 13th",
        price: 999,
        color: "#5e6ab8",
        image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-13-01.jpg")
  ];
}
