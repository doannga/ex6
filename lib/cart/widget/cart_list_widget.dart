import 'package:ex6/cart/cart_state.dart';
import 'package:flutter/material.dart';

import '../../data/cart_item.dart';
import 'cart_item_widget.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({Key? key}) : super(key: key);

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    double checkoutPrice = 0;
    Size size = MediaQuery.of(context).size;
    for (CartItem cart in cartList) {
      checkoutPrice += cart.totalPrice;
    }
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/').then(
              (_) {
                setState(() {});
              },
            );
          },
        ),
        title: const Text('My Cart'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          var cart = cartList[index];
          //checkoutPrice += cart.totalPrice;
          return CartItemWidget(
            cartItem: cart,
            refresh: () {
              setState(() {});
            },
          );
        },
      ),
      bottomSheet: Container(
        color: Colors.black12,
        padding: const EdgeInsets.only(top: 5),
        height: size.height / 6,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Text(
                    'Checkout Price:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Rs. $checkoutPrice',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Material(
                elevation: 1,
                color: Colors.red,
                child: InkWell(
                  onTap: () {},
                  child: const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
