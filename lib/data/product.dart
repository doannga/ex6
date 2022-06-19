import 'package:ex6/data/ingredient.dart';
import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
  final int id;
  final String img;
  String name;
  final String category;
  double price;
  final double rootPrice;
  bool isFavorite = false;
  final List<Ingredient> ingredients;
  final List<String> recipe;

  Product(this.id, this.img, this.name, this.category, this.price,
      this.rootPrice, this.isFavorite, this.ingredients, this.recipe);

  void changeName(String nameChange) {
    name = nameChange;
    notifyListeners();
  }

  void changePrice(double priceChange) {
    price = priceChange;
    notifyListeners();
  }
}
