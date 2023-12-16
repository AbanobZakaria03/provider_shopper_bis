import 'package:flutter/foundation.dart';

import '../models/product.dart';

class CartModel extends ChangeNotifier {
  /// Internal, private state of the cart. Stores the ids of each Product.
  final List<int> _productIds = [];

  /// List of Products in the cart.
  List<Product> get products => _productIds
      .map(
        (id) => Product.products.firstWhere((product) => product.id == id),
      )
      .toList();

  /// The current total price of all Products.
  int get totalPrice =>
      products.fold(0, (total, current) => total + current.price);

  /// Adds [Product] to cart. This is the only way to modify the cart from outside.
  void add(Product product) {
    _productIds.add(product.id);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }

  void remove(Product product) {
    _productIds.remove(product.id);
    // Don't forget to tell dependent widgets to rebuild _every time_
    // you change the model.
    notifyListeners();
  }
}
