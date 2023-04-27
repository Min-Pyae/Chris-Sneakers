import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final IconData? icon;
  final String titleText;
  final void Function()? onTap;
  const DrawerListTile({super.key, required this.icon, required this.titleText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10.0
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          titleText,
          style: const TextStyle(color: Colors.white),
        ),
        onTap: onTap,
      ),
    );
  }
}
