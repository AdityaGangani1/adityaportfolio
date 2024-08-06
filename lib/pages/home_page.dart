import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/widget/drawer_mobile.dart';
import 'package:adityaportfolio/widget/header_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffolKey,
        endDrawer: DrawerMobile(),
        backgroundColor: CustomColors.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            // HeaderDesktop(),
            HeaderMobile(
              onMenuTap: () {
                scaffolKey.currentState?.openEndDrawer();
              },
              onLogoTap: () {},
            ),
            //SKILL
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //PROJECT
            Container(
              height: 500,
              width: double.maxFinite,
              // color: Colors.blueGrey,
            ),
            //CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
              // color: Colors.blueGrey,
            ),
          ],
        ));
  }
}
