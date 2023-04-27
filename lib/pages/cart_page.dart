import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/components/app_button.dart';
import 'package:sneaker_app/components/cart_item.dart';
import 'package:sneaker_app/const.dart';
import 'package:sneaker_app/models/cart.dart';
import 'package:sneaker_app/models/sneaker.dart';
import 'package:sneaker_app/pages/home_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final cart = Provider.of<Cart>;

  void payButtonOnPressed() {
    if (cart(context, listen: false).getCartList.isEmpty) {
      
    } else {
      // CLEAR CART LIST
      cart(context, listen: false).clearCartList();

      // NAVIGATE TO HOME PAGE
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const HomePage())
      );

      // SHOW DIALOG
      showDialog(
        context: context,
        builder: (context) { 
          Future.delayed(const Duration(milliseconds: 800), () {
            Navigator.of(context).pop(true);
          });
          return const AlertDialog(
            backgroundColor: Colors.black87,
            title: Text('Thank you for your purchase!',
            style: TextStyle(
              color: Colors.white
            ),),
          );
        }
      );
    }
  }

  void deleteItemFromCart(Sneaker sneaker) => cart(context, listen: false).removeItemFromCart(sneaker);

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),

            // PAY NOW BUTTON
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0
              ),
              child: Center(
                child: AppButton(
                  buttonText: 'Pay Now',
                  onPressed: () => payButtonOnPressed(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}