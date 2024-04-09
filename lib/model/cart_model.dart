import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "assets/img/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/img/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/img/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/img/water.png", Colors.blue],
  ];

  final List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemsCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemForCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
