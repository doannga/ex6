import 'package:ex6/data/cart_item.dart';

import '../data/product.dart';

final cartList = [];
final Map<int, CartItem> hmCart = {};
double totalPrice() {
  double total = 0;
  for (CartItem cart in cartList) {
    total += cart.totalPrice;
  }
  return total;
}

class CartState {
  final _cartList = [];
  List get cartList => _cartList;

  final Map<int, CartItem> hmCart = {};

  void addProductToCart(Product p, int count) {
    // business logic
    // Nếu có rồi thì tăng qty của cartItem lên 1.
    // Chưa có thì add vào
  }

  void removeProductInCart() {}
  int increaseQty() {
    return 0;
  }
}
