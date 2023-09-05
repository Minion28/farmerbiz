import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  final List _shopItems = [
    ["Cabbage", "30.00", "lib/images/cabbage.jpg", Colors.green],
    ["Kales", "10.00", "lib/images/kales.jpg", Colors.greenAccent],
    ["Mango", "15.00", "lib/images/mango.jpg", Colors.yellow],
    ["Oranges", "10.00", "lib/images/oranges.jpg", Colors.yellowAccent],
    ["Potatoes", "500.00", "lib/images/potatoes.jpg", Colors.brown],
    ["Chicken", "800.00", "lib/images/chicken.png", Colors.white30],
    ["Cow", "40,000.00", "lib/images/cow.png", Colors.grey]
  ];

  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
}
void removeCart(int index) {
  _cartItems.removeAt(index);
  notifyListeners();
}

String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; 1< _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
}
}