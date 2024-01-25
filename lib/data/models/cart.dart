import 'package:store/data/models/product.dart';
import 'cart_item.dart';

class Cart {
  late final List<CartItems> products;

  Cart({required this.products});

  Map<String, dynamic> toMap() {
    return {
      'products': products,
    };
  }

  Cart.fromMap(dynamic map) {
    products = map['product'];
  }

  Cart toEntity() => Cart(
        products: products,
      );
}

Cart demoCart = Cart(products: [
  CartItems(product: demoProducts[1], quantity: 1, price: ''),
  CartItems(product: demoProducts[3], quantity: 1, price: ''),
  CartItems(product: demoProducts[0], quantity: 1, price: ''),
  CartItems(product: demoProducts[1], quantity: 1, price: ''),
  CartItems(product: demoProducts[3], quantity: 1, price: ''),
  CartItems(product: demoProducts[0], quantity: 1, price: ''),
  CartItems(product: demoProducts[1], quantity: 1, price: ''),
  CartItems(product: demoProducts[3], quantity: 1, price: ''),
]);
