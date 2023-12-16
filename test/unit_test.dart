import 'package:flutter_test/flutter_test.dart';
import 'package:provider_shopper/models/product.dart';
import 'package:provider_shopper/providers/cart_provider.dart';

void main() {
  late CartModel cartModel;

  setUp(() {
    cartModel = CartModel();
  });

  group('Test database crud functions', () {
    test('add product', () {
      //Act
      cartModel.add(Product.products[0]);

      //Assert
      expect(cartModel.products.contains(Product.products[0]), true);
    });

    test('add product', () {
      //Act
      cartModel.add(Product.products[0]);
      cartModel.add(Product.products[1]);

      //Assert
      expect(cartModel.totalPrice, 22390);
    });
  });
}
