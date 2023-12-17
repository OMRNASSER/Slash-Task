import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id , num_of_items;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color,
      required this.num_of_items});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 270,
      size: 12,
      description: dummyText,
      num_of_items: 10,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      num_of_items: 40,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 230,
      size: 10,
      description: dummyText,
      num_of_items: 30,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 350,
      size: 11,
      description: dummyText,
      num_of_items: 5,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 300,
      size: 12,
      description: dummyText,
      num_of_items: 3,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 250,
    size: 12,
    description: dummyText,
    num_of_items: 0,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
