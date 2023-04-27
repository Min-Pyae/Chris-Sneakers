import 'package:flutter/material.dart';
import 'package:sneaker_app/const.dart';
import 'package:sneaker_app/models/sneaker.dart';

class CartItem extends StatelessWidget {
  final Sneaker sneaker;
  final void Function()? onPressed;
  const CartItem({super.key, required this.sneaker, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kListTileBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 16.0
        ),
        child: ListTile(
          leading: Image.asset(
            sneaker.imgPath,
            width: 85,
            fit: BoxFit.fill,
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5
            ),
            child: Text(
              sneaker.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5
            ),
            child: Text(
              '\$${sneaker.price}',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: onPressed,
          )
        ),
      ),
    );
  }
}