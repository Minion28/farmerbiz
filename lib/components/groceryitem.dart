import 'package:flutter/material.dart';
import 'package:faremrbiz/models/cart.dart';

class GroceryItem extends StatelessWidget{
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  const GroceryItem({super.key,
  required this.itemName,
  required this.itemPrice,
  required this.imagePath,
  required this.color});
  @override

  Widget build(BuildContext context){
    return Container(
      child: Column(children: [
        Image.asset(imagePath)
      ],),
    );
  }
}