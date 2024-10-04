import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Force",
        description: "Latest design ",
        imagePath: 'lib/images/Airforce.png',
        price: "236"),
    Shoe(
        name: "Jordan",
        description: "Latest design ",
        imagePath: 'lib/images/Jordan.png',
        price: "250"),
    Shoe(
        name: "Nike Dunk",
        description: "Latest design ",
        imagePath: 'lib/images/Dunk.png',
        price: "245"),
    Shoe(
        name: "Air Jordan",
        description: "Latest design ",
        imagePath: 'lib/images/Air.png',
        price: "245")
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
