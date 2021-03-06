import 'package:ex6/data/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cart_state.dart';

class CartItemWidget extends StatefulWidget {
  // final CartItem cartItem;
  //final Function() refresh;

  const CartItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    var cartItem = context.watch<CartItem>();
    var product = cartItem.product;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              child: Image.network(
                product.img,
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          //CartState.removeProductToCart(cartItem);
                          Provider.of<CartState>(context, listen: false)
                              .removeProductToCart(cartItem);
                          //widget.refresh();
                          //setState(() {});
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Price:',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: '\$${product.price}',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Sub Total:',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: '\$${product.rootPrice}',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Ships Free',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          if (cartItem.quantity > 0) {
                            Provider.of<CartState>(context, listen: false)
                                .changeProductNumber(cartItem, -1);
                            // cartItem.quantity--;
                            // cartItem.totalPrice;
                            // setState(() {});
                            // widget.refresh();
                          }
                          //setState(() {});
                        },
                        icon: const Icon(Icons.remove, color: Colors.red),
                      ),
                      Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Selector<CartItem, int>(
                            selector: (_, cartItem) => cartItem.quantity,
                            builder: (_, quantity, __) {
                              return Text(
                                '${cartItem.quantity}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              );
                            },
                          ),
                          // Text(
                          //   '${cartItem.quantity}',
                          //   style: const TextStyle(
                          //     fontWeight: FontWeight.normal,
                          //     fontSize: 18,
                          //     color: Colors.black,
                          //   ),
                          // ),
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          Provider.of<CartState>(context, listen: false)
                              .changeProductNumber(cartItem, 1);
                          // cartItem.quantity++;
                          // cartItem.totalPrice;
                          // widget.refresh();
                        },
                        icon: const Icon(Icons.add, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // child: Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     ClipRRect(
      //       child: Image.network(product.img),
      //       borderRadius: const BorderRadius.only(
      //         topLeft: Radius.circular(20),
      //         bottomLeft: Radius.circular(20),
      //       ),
      //     ),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Row(
      //           children: [
      //             Text(
      //               product.name,
      //               style: const TextStyle(
      //                 fontSize: 16,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {
      //                 cartList.remove(cartItem);
      //                 setState(() {});
      //               },
      //               icon: const Icon(
      //                 Icons.delete,
      //                 color: Colors.red,
      //               ),
      //             ),
      //           ],
      //         ),
      //         Text.rich(
      //           TextSpan(
      //             text: 'Price:   ',
      //             style: const TextStyle(
      //                 fontSize: 20, fontWeight: FontWeight.w600),
      //             children: [
      //               TextSpan(
      //                 text: '\$${product.price}',
      //                 style: const TextStyle(
      //                   fontSize: 24,
      //                   color: Colors.grey,
      //                   fontWeight: FontWeight.normal,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Text.rich(
      //           TextSpan(
      //             text: 'Sub Total:   ',
      //             style: const TextStyle(
      //                 fontSize: 20, fontWeight: FontWeight.w600),
      //             children: [
      //               TextSpan(
      //                 text: '\$${product.rootPrice}',
      //                 style: const TextStyle(
      //                   fontSize: 24,
      //                   color: Colors.orangeAccent,
      //                   fontWeight: FontWeight.normal,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             const Text(
      //               'Ships Free',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.w600,
      //                 color: Colors.orangeAccent,
      //               ),
      //             ),
      //             const Spacer(),
      //             IconButton(
      //               onPressed: () {
      //                 if (cartItem.quantity > 0) {
      //                   cartItem.quantity--;
      //                 }
      //                 setState(() {});
      //               },
      //               icon: const Icon(Icons.remove, color: Colors.red),
      //             ),
      //             Material(
      //               elevation: 2,
      //               borderRadius: BorderRadius.circular(5),
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text(
      //                   '${cartItem.quantity}',
      //                   style: const TextStyle(
      //                     fontWeight: FontWeight.normal,
      //                     fontSize: 18,
      //                     color: Colors.black,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {
      //                 cartItem.quantity++;
      //                 setState(() {});
      //               },
      //               icon: const Icon(Icons.add, color: Colors.green),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
