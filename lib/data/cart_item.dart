import 'package:ex6/data/product.dart';
import 'package:flutter/cupertino.dart';

class CartItem extends ChangeNotifier {
  final Product product;

  int _quantity = 1;

  int get quantity => _quantity;

  void changeQuantity(int quantity) {
    _quantity += quantity;
    notifyListeners();
  }

  double get totalPrice => product.price * _quantity;

  CartItem(this.product);
}
