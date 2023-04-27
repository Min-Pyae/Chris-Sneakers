import 'package:flutter/material.dart';
import 'package:sneaker_app/const.dart';
import 'package:sneaker_app/models/sneaker.dart';

class SneakerTile extends StatelessWidget {
  final Sneaker sneaker;
  final void Function()? onTap;
  const SneakerTile({super.key, required this.sneaker, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: kListTileBackgroundColor, 
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // SNEAKER IMAGE
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset(sneaker.imgPath),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Text(
              sneaker.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 13,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '\$${sneaker.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)
                    )
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
