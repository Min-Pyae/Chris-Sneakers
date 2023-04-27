import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/components/search_button.dart';
import 'package:sneaker_app/components/sneaker_tile.dart';
import 'package:sneaker_app/models/cart.dart';
import 'package:sneaker_app/models/sneaker.dart';

class ShoppingPage extends StatelessWidget {
  final int? itemCount;
  final List<Sneaker> sneakersList;
  const ShoppingPage({super.key, required this.itemCount, required this.sneakersList});

  @override
  Widget build(BuildContext context) {

    // ADD ITEM FROM CART 
    void addItemToCart(Sneaker sneaker) {
      Provider.of<Cart>(context, listen: false).addItemToCart(sneaker);
      showDialog(
        context: context,
        builder: (context) { 
          Future.delayed(const Duration(milliseconds: 600), () {
            Navigator.of(context).pop(true);
          });
          return const AlertDialog(
            backgroundColor: Colors.black87,
            title: Text('Successfully added to cart!',
            style: TextStyle(
              color: Colors.white
            ),),
          );
        }
      );
    } 
    
    return Column(
        children: [

          // SEARCH BUTTON
          const SearchButton(),

          // MOTTO TEXT
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              'Everyone flies...some fly longer than others',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),

          // HEADING
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot Picks',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100
                    ),
                  ),
                )
              ],
            ),
          ),

          // SNEAKER LISTS
          Expanded(
            child: ListView.builder(
              itemCount: itemCount,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Sneaker sneaker = sneakersList[index];
                return SneakerTile(
                  onTap: () => addItemToCart(sneaker),
                  sneaker: sneaker,
                );
              }
            )
          ),

          // DIVIDER 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Divider(
              color: Colors.grey[100],
            ),
          ),

        ],
      );
  }
}