import 'package:ex6/data/product.dart';
import 'package:ex6/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../detail/detail_product_screen.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final nameCtrl = TextEditingController();
  final priceCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var product = context.watch<Product>();
    nameCtrl.text = product.name;
    priceCtrl.text = product.price.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        leading: const BackButton(),
      ),
      body: Column(
        children: [
          TextField(
            controller: nameCtrl,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          // Consumer<HomeState>(builder: (_, homeState, __) {
          //   return TextField(
          //     controller: nameCtrl,
          //     decoration: const InputDecoration(labelText: 'Name'),
          //   );
          // }),
          TextField(
            controller: priceCtrl,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Price'),
          ),
          const SizedBox(
            height: 50,
          ),
          Consumer<HomeState>(builder: (_, homeState, __) {
            return ElevatedButton(
              onPressed: () {
                homeState.updateProduct(product, nameCtrl.text, priceCtrl.text);
                print(
                    'thuynga.dt: name: ${product.name} price: ${product.price}');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChangeNotifierProvider.value(
                              value: product,
                              child: const DetailProductScreen(),
                            )));
                //Navigator.pop(context);
              },
              child: const Text('Update'),
            );
          }),
        ],
      ),
    );
  }
}
