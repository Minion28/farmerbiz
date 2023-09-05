import 'package:flutter/material.dart';


class GroceryItem extends StatelessWidget{
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  GroceryItem({super.key,
  required this.itemName,
  required this.itemPrice,
  required this.imagePath,
  required this.color,
    required this.onPressed
  }
  );
  @override

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        decoration: BoxDecoration(color: color,
        borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Expanded(
              child: Image.asset(imagePath,
              height: 100,
              width: 120),
          ),
          Text(itemName),
          MaterialButton(onPressed: onPressed,
          color: color,
          child: Text('Ksh ' + itemPrice,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),)),

        ],),
      ),
    );
  }
}