import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/pages/shopping_page.dart';
import 'package:sneaker_app/models/cart.dart';

class WomenPage extends StatefulWidget {
  const WomenPage({super.key});

  @override
  State<WomenPage> createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return ShoppingPage(
          itemCount: value.getWomenSneakersList.length, 
          sneakersList: value.getWomenSneakersList
        );
      }
    );
  }
}