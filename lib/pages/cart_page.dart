import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/components/cart_item.dart';
import 'package:sneaker_app/const.dart';
import 'package:sneaker_app/models/cart.dart';
import 'package:sneaker_app/models/sneaker.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void deleteItemFromCart(Sneaker sneaker) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(sneaker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            
            // CART ITEMS
            Consumer<Cart>(
                builder: ((context, value, child) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: value.getCartList.length,
                      itemBuilder: (context, index) {
                        return CartItem(
                          onPressed: (() => deleteItemFromCart(value.getCartList[index])),
                          sneaker: value.getCartList[index]
                        );
                      }
                    ),
                  );
                }
              ) 
            )
          ],
        ),
      ),
    );
  }
}