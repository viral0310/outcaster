import 'package:flutter/material.dart';

class Global {
  static List<Map> productList = [
    {
      'image': 'assets/th.jpg',
      'name': 'vagabond sack',
      'price': '120',
    },
    {
      'image': 'assets/stella sunglasses.jpg',
      'name': 'Stella sunglasses',
      'price': '58',
    },
    {
      'image': 'assets/whitney belt.jpg',
      'name': 'Whitney belt',
      'price': '36',
    },
    {
      'image': 'assets/gardney strand.jpg',
      'name': 'Garden strand',
      'price': '98',
    },
    {
      'image': 'assets/earring.jpg',
      'name': 'Strut earrings',
      'price': '34',
    },
    {
      'image': 'assets/socks.jpg',
      'name': 'Varsiy socks',
      'price': '12',
    },
    {
      'image': 'assets/keyring.jpg',
      'name': 'Weave keyring',
      'price': '10',
    },
  ];

  static List<Map> searchList = [
    {
      'image': 'assets/1.jpg',
      'name': 'White pinstripe shirt',
      'price': '\$110',
    },
    {
      'image': 'assets/2.jpg',
      'name': 'Chambray shirt',
      'price': '\$210',
    },
    {
      'image': 'assets/3.jpg',
      'name': 'surt and perf shirt',
      'price': '\$102',
    },
    {
      'image': 'assets/4.jpg',
      'name': 'Chambray shirt',
      'price': '\$10',
    },
    {
      'image': 'assets/5.jpg',
      'name': 'Sunshirt',
      'price': '\$190',
    },
  ];
  static List<AddProduct> addProductList = [];
}

class AddProduct {
  final String? name;
  final String? image;
  final String? price;
  AddProduct({
    required this.name,
    required this.image,
    required this.price,
  });
}
