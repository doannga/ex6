import 'package:ex6/data/cart_item.dart';
import 'package:flutter/cupertino.dart';

import '../data/product.dart';

class CartState extends ChangeNotifier {
  final _cartList = <CartItem>[];

  List<CartItem> get cartItemList => _cartList;

  final Map<int, CartItem> hmCart = {};

  double totalPrice() {
    double total = 0;
    for (CartItem cart in _cartList) {
      total += cart.totalPrice;
    }
    return total;
  }

  void addToCart(Product p, [int number = 1]) {
    print('thuynga.dt: AddtoCart');
    if (hmCart[p.id] == null) {
      CartItem cartItem = CartItem(p);
      _cartList.add(cartItem);
      hmCart[p.id] = cartItem;
    } else {
      hmCart[p.id]?.changeQuantity(1);
    }
    print('thuynga.dt: AddtoCart, cartLength: ${_cartList.length}');
    notifyListeners();
  }

  void changeProductNumber(CartItem cart, int number) {
    if (hmCart[cart.product.id] != null) {
      cart.changeQuantity(number);
    }
    notifyListeners();
  }

  void removeProductToCart(CartItem cart) {
    if (hmCart[cart.product.id] != null) {
      _cartList.remove(cart);
      hmCart.remove(cart);
    }
    notifyListeners();
  }

  double getTotalPriceCart() {
    double rs = 0;
    for (CartItem cart in _cartList) {
      rs += cart.totalPrice;
    }
    print('thuynga.dt: GetTotalPriceCart: $rs');
    return rs;
  }
}
