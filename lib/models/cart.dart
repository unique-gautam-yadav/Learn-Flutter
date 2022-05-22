// ignore_for_file: unnecessary_null_comparison
import 'package:first_app/models/CatalogModel.dart';

class CartModel {
  static final cart = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cart;
  //Catalog Field
  late CatalogModel _catalog;

  //Collection of IDs - stores id of each item
  List<int> _catalogIds = [];

  //Get catalog
  CatalogModel get catalog => _catalog;

  //Set catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items =>
      _catalogIds.map((id) => _catalog.getByID(id)).toList();

  //Get total price
  num get totalPrice => items.fold(0, (total, cur) => total + cur.price);

  //Add Item
  void add(Item item) => _catalogIds.add(item.id);

  //Remove Item
  void remove(Item item) => _catalogIds.remove(item.id);
}
