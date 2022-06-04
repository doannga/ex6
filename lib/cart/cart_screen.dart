import 'package:ex6/cart/widget/cart_list_widget.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartListScreen(),
    );
  }
}
