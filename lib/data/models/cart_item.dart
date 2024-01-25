import 'package:store/data/models/product.dart';

class CartItems {
  late final Product product;
  late final int quantity;
  late final String price;

  CartItems({required this.product, required this.quantity, required this.price});

  Map<String, dynamic> toMap() {
    return {
      'product': product,
      'quantity': quantity,
      'price': price,
    };
  }

  CartItems.fromMap(dynamic map) {
    product = map['product'];
    quantity = map['quantity'];
    price = map['price'];
  }

  CartItems toEntity() => CartItems(product: product, quantity: quantity, price: '');

  static map(Function(dynamic product) param0) {}
}
