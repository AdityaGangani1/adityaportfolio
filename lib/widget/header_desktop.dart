import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/nav_items.dart';
import 'package:adityaportfolio/widget/site_logo.dart';
import 'package:adityaportfolio/widget/style.dart';
import 'package:flutter/material.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: kHeaderDecoration,
      width: double.maxFinite,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          //LOGO
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.whitePrimary),
                  )),
            )
        ],
      ),
    );
  }
}