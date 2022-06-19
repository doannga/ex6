import 'package:ex6/cart/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    // for (CartItem cart in cartList) {
    //   checkoutPrice += cart.totalPrice;
    // }
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
      body: Consumer<CartState>(
        builder: (_, cartState, __) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: cartState.cartItemList.length,
            itemBuilder: (context, index) {
              var cart = cartState.cartItemList[index];
              //checkoutPrice += cart.totalPrice;
              return ChangeNotifierProvider.value(
                value: cart,
                // Dung provider thi ko can truyen tham so vao
                child: const CartItemWidget(),
              );
              // return CartItemWidget(
              //   cartItem: cart,
              //   // refresh: () {
              //   //   setState(() {});
              //   // },
              // );
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

                  // Chi can build lai mot phan du lieu thi dung selector
                  // Selector<CartItem, int>(
                  //     builder: (builder), selector: selector)

                  // Consumer dung khi build lại ca 1 item
                  Consumer<CartState>(builder: (_, cartState, __) {
                    return Text(
                      //Provider.of<CartState>(context, listen: false).totalPrice()
                      'Rs. ${cartState.totalPrice()}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  })
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
