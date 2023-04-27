import 'package:flutter/material.dart';
import 'package:sneaker_app/components/drawer_list_tile.dart';
import 'package:sneaker_app/pages/login_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // LOGO
              DrawerHeader(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context,
                      color: Colors.grey[800]),
                  ),
                ),
                child: Image.asset(
                  'images/nike_logo.png',
                  color: Colors.white,
                ),
              ),

              // Divider
              

              // HOME
              DrawerListTile(
                icon: Icons.home, 
                titleText: 'Home',
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
                
              // ABOUT
              DrawerListTile(
                icon: Icons.info, 
                titleText: 'About',
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),

          // LOGOUT BUTTON
          DrawerListTile(
            icon: Icons.logout, 
            titleText: 'Logout',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginPage())
              );
            },
          )
        ],
      ),
    );
  }
}