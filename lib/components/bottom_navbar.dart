import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int)? onTap;
  const BottomNavbar({super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BottomNavigationBar(
        iconSize: 30,
        elevation: 0,
        backgroundColor: Colors.grey[300],
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.man),
              label: 'Men',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.woman),
              label: 'Women',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          onTap: onTap,
      ),
    );
  }
}