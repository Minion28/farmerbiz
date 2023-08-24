import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  final List _shopItems = [
    ["Cabbage", "Ksh30.00", "lib/images/cabbage.jpg", Colors.green],
    ["Kales", "Ksh10.00", "lib/images/kales.jpg", Colors.green],
    ["Mango", "Ksh15.00", "lib/images/mango.jpg", Colors.yellow],
    ["Oranges", "ksh10.00", "lib/images/oranges.jpg", Colors.yellow],
    ["Potatoes", "Ksh500.00", "lib/images/potatoes.jpg", Colors.brown],
    ["Chicken", "Ksh800.00", "lib/images/chicken.png", Colors.brown],
    ["Cow", "4.00", "lib/images/cow.png", Colors.grey]
  ];

  get shopItems => _shopItems;

}