import 'package:flutter/cupertino.dart';
import 'package:sneaker_app/models/sneaker.dart';

class Cart extends ChangeNotifier {
  final List<Sneaker> _menSneakersList = [
    Sneaker(name: 'Air Jordan 1 High OG Chicago Lost & Found', price: '210.00', imgPath: 'images/men_sneakers/nike-air-jordan-1-retro-high-og-lost-and-found-chicago.png'),
    Sneaker(name: 'Air Force 1 Low Supreme White', price: '142.00', imgPath: 'images/men_sneakers/nike-air-force-1-low-supreme-white.png'),
    Sneaker(name: 'Air Jordan 1 Mid Smoke Grey', price: '120.00', imgPath: 'images/men_sneakers/nike-air-jordan-1-mid-light-smoke-grey.png'),
    Sneaker(name: 'Air Jordan 4 Retro Midnight Navy', price: '149.99', imgPath: 'images/men_sneakers/air-jordan-4-retro-midnight-navy.png'),
    Sneaker(name: 'Air Jordan 1 Retro High OG', price: '109.99', imgPath: 'images/men_sneakers/air-jordan-1-retro-high-og.png'),
    Sneaker(name: 'Nike Dunk Low Panda', price: '89.99', imgPath: 'images/men_sneakers/nike-dunk-low-panda.png')
  ];

  final List<Sneaker> _womenSneakersList = [
    Sneaker(name: 'Air Jordan 1 Mid True Blue Cement', price: '87.99', imgPath: 'images/women_sneakers/air-jordan-1-mid-true-blue-cement.png'),
    Sneaker(name: 'Nike Air Force 1 Low Undefeated multi-patent Celestine Blue', price: '129.99', imgPath: 'images/women_sneakers/nike-air-force-1-low-sp-undefeated-multi-patent-celestine-blue.png'),
    Sneaker(name: 'Nike Dunk Low Essential Paisley Pack Pink', price: '120.00', imgPath: 'images/women_sneakers/nike-dunk-low-essential-paisley-pack-pink.png'),
    Sneaker(name: 'Nike Dunk High Aluminum', price: '159.99', imgPath: 'images/women_sneakers/nike-dunk-high-aluminum.png'),
    Sneaker(name: 'Nike Dunk High University Gold', price: '130.00', imgPath: 'images/women_sneakers/Nike-Dunk-High-University-Gold.png')
  ];

// GET MEN SNEAKERS LIST
  List<Sneaker> get getMenSneakersList => _menSneakersList;

  // GET WOMEN SNEAKERS LIST
  List<Sneaker> get getWomenSneakersList => _womenSneakersList;


  final List<Sneaker> _cartList = [];

  // GET CART LIST
  List<Sneaker> get getCartList => _cartList;


  // ADD ITEM TO CART
  void addItemToCart(Sneaker sneaker) {
    _cartList.add(sneaker);
    notifyListeners();
  }

  // REMOVE ITEM FROM CART
   void removeItemFromCart(Sneaker sneaker) {
    _cartList.remove(sneaker);
    notifyListeners();
  }
}