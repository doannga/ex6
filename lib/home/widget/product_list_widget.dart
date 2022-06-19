import 'package:ex6/home/home_state.dart';
import 'package:ex6/home/widget/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/product.dart';
import '../../detail/detail_product_screen.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<HomeState>(
        builder: (_, homeState, __) {
          return GridView.builder(
            itemCount: homeState.productList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (_, index) {
              Product p = homeState.productList[index];
              return ProductItem(
                product: p,
                press: (product) async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChangeNotifierProvider.value(
                        value: p,
                        child: const DetailProductScreen(),
                      ),
                    ),
                  );
                },
              );
              //   ChangeNotifierProvider.value(
              //   value: p,
              //   child: ProductItem(
              //     product: p,
              //     press: (product) async {
              //       await Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (_) => const DetailProductScreen(),
              //         ),
              //       );
              //     },
              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
