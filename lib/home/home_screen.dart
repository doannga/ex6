import 'package:ex6/home/widget/product_list_widget.dart';
import 'package:flutter/material.dart';

import '../cart/cart_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Home Screen',
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Stack(
            children: [
              ElevatedButton(
                child: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart_page');
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: Colors.grey.shade600,
                ),
              ),
              Positioned(
                right: 0,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '${cartList.length}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: const ProductListWidget(),
    );
  }
}
