import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  final List _shopItems = [
    ["Cabbage", "30.00", "lib/images/cabbage.jpg", Colors.green],
    ["Kales", "10.00", "lib/images/kales.jpg", Colors.greenAccent],
    ["Mango", "15.00", "lib/images/mango.jpg", Colors.yellow],
    ["Oranges", "10.00", "lib/images/oranges.jpg", Colors.yellowAccent],
    ["Potatoes", "500.00", "lib/images/potatoes.jpg", Colors.brown],
    ["Chicken", "800.00", "lib/images/chicken.png", Colors.white30],
    ["Cow", "4.00", "lib/images/cow.png", Colors.grey]
  ];

  

  get shopItems => _shopItems;

}