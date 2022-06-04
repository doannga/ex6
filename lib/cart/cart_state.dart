import 'package:ex6/data/cart_item.dart';

import '../data/ingredient.dart';
import '../data/product.dart';

final cartList = [
  CartItem(
    Product(
      7,
      'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/what-is-the-5-2-diet-main-image-700-350-1875ca8.jpg?quality=90&resize=960,872',
      'Áo phông xanh',
      'Áo phông',
      200,
      250,
      false,
      [
        Ingredient(
          'https://product.hstatic.net/1000282430/product/290001360000_2b31a130c5f448d5a0c0d29a4a092b98_large.jpg',
          'Arugula',
        ),
        Ingredient(
          'https://southmill.com/wp-content/uploads/2019/10/GettyImages-620993654-Shiitake.jpg',
          'Mushroom',
        ),
      ],
      [
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
        'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
      ],
    ),
  ),
  // CartItem(
  //   Product(
  //     7,
  //     'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/what-is-the-5-2-diet-main-image-700-350-1875ca8.jpg?quality=90&resize=960,872',
  //     'Áo phông xanh',
  //     'Áo phông',
  //     200,
  //     250,
  //     false,
  //     [
  //       Ingredient(
  //         'https://product.hstatic.net/1000282430/product/290001360000_2b31a130c5f448d5a0c0d29a4a092b98_large.jpg',
  //         'Arugula',
  //       ),
  //       Ingredient(
  //         'https://southmill.com/wp-content/uploads/2019/10/GettyImages-620993654-Shiitake.jpg',
  //         'Mushroom',
  //       ),
  //     ],
  //     [
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
  //     ],
  //   ),
  // ),
  // CartItem(
  //   Product(
  //     7,
  //     'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/what-is-the-5-2-diet-main-image-700-350-1875ca8.jpg?quality=90&resize=960,872',
  //     'Áo phông xanh',
  //     'Áo phông',
  //     200,
  //     250,
  //     false,
  //     [
  //       Ingredient(
  //         'https://product.hstatic.net/1000282430/product/290001360000_2b31a130c5f448d5a0c0d29a4a092b98_large.jpg',
  //         'Arugula',
  //       ),
  //       Ingredient(
  //         'https://southmill.com/wp-content/uploads/2019/10/GettyImages-620993654-Shiitake.jpg',
  //         'Mushroom',
  //       ),
  //     ],
  //     [
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
  //     ],
  //   ),
  // ),
  // CartItem(
  //   Product(
  //     7,
  //     'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/what-is-the-5-2-diet-main-image-700-350-1875ca8.jpg?quality=90&resize=960,872',
  //     'Áo phông xanh',
  //     'Áo phông',
  //     200,
  //     250,
  //     false,
  //     [
  //       Ingredient(
  //         'https://product.hstatic.net/1000282430/product/290001360000_2b31a130c5f448d5a0c0d29a4a092b98_large.jpg',
  //         'Arugula',
  //       ),
  //       Ingredient(
  //         'https://southmill.com/wp-content/uploads/2019/10/GettyImages-620993654-Shiitake.jpg',
  //         'Mushroom',
  //       ),
  //     ],
  //     [
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
  //     ],
  //   ),
  // ),
  // CartItem(
  //   Product(
  //     7,
  //     'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/what-is-the-5-2-diet-main-image-700-350-1875ca8.jpg?quality=90&resize=960,872',
  //     'Áo phông xanh',
  //     'Áo phông',
  //     200,
  //     250,
  //     false,
  //     [
  //       Ingredient(
  //         'https://product.hstatic.net/1000282430/product/290001360000_2b31a130c5f448d5a0c0d29a4a092b98_large.jpg',
  //         'Arugula',
  //       ),
  //       Ingredient(
  //         'https://southmill.com/wp-content/uploads/2019/10/GettyImages-620993654-Shiitake.jpg',
  //         'Mushroom',
  //       ),
  //     ],
  //     [
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
  //     ],
  //   ),
  // ),
  // CartItem(
  //   Product(
  //     7,
  //     'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/what-is-the-5-2-diet-main-image-700-350-1875ca8.jpg?quality=90&resize=960,872',
  //     'Áo phông xanh',
  //     'Áo phông',
  //     200,
  //     250,
  //     false,
  //     [
  //       Ingredient(
  //         'https://product.hstatic.net/1000282430/product/290001360000_2b31a130c5f448d5a0c0d29a4a092b98_large.jpg',
  //         'Arugula',
  //       ),
  //       Ingredient(
  //         'https://southmill.com/wp-content/uploads/2019/10/GettyImages-620993654-Shiitake.jpg',
  //         'Mushroom',
  //       ),
  //     ],
  //     [
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
  //       'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'
  //     ],
  //   ),
  // ),
];
final Map<int, CartItem> hmCart = {};
