class Product {
  final int id;
  final String name;
  final String image;
  final int price;

  Product(
      {required this.id,
      required this.name,
      required this.image,
      this.price = 42});

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Product && other.id == id;


  static List<Product> products = [
    Product(
      id: 1,
      name: 'Samsung A54',
      image: 'https://m.media-amazon.com/images/I/71xU8w3fHJL._AC_UL320_.jpg',
      price: 16000,
    ),
    Product(
      id: 2,
      name: 'Realme C53',
      image: 'https://m.media-amazon.com/images/I/71TULGodSqL._AC_UL320_.jpg',
      price: 6390,
    ),
    Product(
      id: 3,
      name: 'Redmi 12',
      image: 'https://m.media-amazon.com/images/I/61sBah54IFL._AC_UL320_.jpg',
      price: 7569,
    ),
  ];
}
