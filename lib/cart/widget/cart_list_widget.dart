import 'package:ex6/cart/cart_state.dart';
import 'package:flutter/material.dart';

import '../../data/cart_item.dart';
import 'cart_item_widget.dart';

class CartListScreen extends StatelessWidget {
  const CartListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double checkoutPrice = 0;
    print('thuynga.dt: length${cartList.length}');
    for (CartItem cart in cartList) {
      print(
          'thuynga.dt: id: ${cart.product.id}, quantity: ${cart.quantity}, price: ${cart.totalPrice}');
      checkoutPrice += cart.totalPrice;
    }
    print('thuynga.dt checkoutPrice $checkoutPrice');
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('My Cart'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          var cart = cartList[index];
          // if (cart != null) {
          //   print(
          //       'thuynga.dt2: id: ${cart.product.id}, name: ${cart.product.name}, quantity: ${cart.quantity}, price: ${cart.totalPrice}');
          //   checkoutPrice += cart.totalPrice;
          //   print('thuynga.dt check CheckoutPrice: $checkoutPrice');
          // } else {
          //   checkoutPrice = 0;
          // }
          return Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: CartItemWidget(cartItem: cart),
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
                  child: Container(
                    width: double.infinity,
                    child: const Padding(
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
            )
          ],
        ),
      ),
    );

    // Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    // ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: cartList.length,
    //   itemBuilder: (context, index) {
    //     var cart = cartList[index];
    //     // if (cart != null) {
    //     //   print(
    //     //       'thuynga.dt2: id: ${cart.product.id}, quantity: ${cart.quantity}, price: ${cart.totalPrice}');
    //     //   checkoutPrice += cart.totalPrice;
    //     // } else {
    //     //   checkoutPrice = 0;
    //     // }
    //     return Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: CartItemWidget(cartItem: cart),
    //     );
    //   },
    // ),
    // Container(
    //   color: Colors.black12,
    //   padding: const EdgeInsets.only(top: 5),
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(10.0),
    //         child: Row(
    //           children: [
    //             const Text(
    //               'Checkout Price:',
    //               style: TextStyle(
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w400,
    //               ),
    //             ),
    //             const Spacer(),
    //             Text(
    //               'Rs. $checkoutPrice',
    //               style: const TextStyle(
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(10),
    //         child: Material(
    //           elevation: 1,
    //           color: Colors.red,
    //           child: InkWell(
    //             onTap: () {},
    //             child: Container(
    //               width: double.infinity,
    //               child: const Padding(
    //                 padding: EdgeInsets.all(10),
    //                 child: Text(
    //                   'Checkout',
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.w700),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // ),
    // ],
    // ),
  }
}
