import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/nav_items.dart';
import 'package:flutter/material.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(
                navIcons[i],
              ),
              titleTextStyle: const TextStyle(
                  color: CustomColors.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              title: Text(navTitles[i]),
              onTap: () {},
            )
        ],
      ),
    );
  }
}
