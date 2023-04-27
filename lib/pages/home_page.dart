import 'package:flutter/material.dart';
import 'package:sneaker_app/components/bottom_navbar.dart';
import 'package:sneaker_app/components/menu_drawer.dart';
import 'package:sneaker_app/const.dart';
import 'package:sneaker_app/pages/cart_page.dart';
import 'package:sneaker_app/pages/men_page.dart';
import 'package:sneaker_app/pages/women_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void bottomNavbarOnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = const [
    MenPage(),
    WomenPage(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        elevation: 0,
        backgroundColor: kBackgroundColor,
      ),
      drawer: const MenuDrawer(),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavbar(
        selectedIndex: _selectedIndex,
        onTap: ((index) => bottomNavbarOnTap(index))
      ),
    );
  }
}