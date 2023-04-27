import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/pages/shopping_page.dart';
import 'package:sneaker_app/models/cart.dart';

class MenPage extends StatefulWidget {
  const MenPage({super.key});

  @override
  State<MenPage> createState() => _MenPageState();
}

class _MenPageState extends State<MenPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return ShoppingPage(
          itemCount: value.getMenSneakersList.length, 
          sneakersList: value.getMenSneakersList
        );
      }
    );
  }
}