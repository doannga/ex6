import 'package:ex6/data/product.dart';

class CartItem {
  final Product product;

  int quantity = 1;

  double get totalPrice => product.price * quantity;

  // set totalPrice(double value) {
  //   _totalPrice = value;
  // } // double get totalPrice {
  //   return product.price * quantity;
  // }
  // // void  setTotalPrice(double totalPrice){
  // //   this.totalPrice = totalPrice;
  // // }

  CartItem(this.product);
}
