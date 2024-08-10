import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/size.dart';
import 'package:adityaportfolio/constants/skill_items.dart';
import 'package:adityaportfolio/widget/drawer_mobile.dart';
import 'package:adityaportfolio/widget/header_desktop.dart';
import 'package:adityaportfolio/widget/header_mobile.dart';
import 'package:adityaportfolio/widget/main_desktop.dart';
import 'package:adityaportfolio/widget/main_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffolKey,
          endDrawer:
              constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
          backgroundColor: CustomColors.scaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onMenuTap: () {
                    scaffolKey.currentState?.openEndDrawer();
                  },
                  onLogoTap: () {},
                ),

              if (constraints.maxWidth >= kMinDesktopWidth)
                MainDesktop()
              else
                MainMobile(),

              //SKILL
              Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: double.maxFinite,
                color: CustomColors.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      'What i can do',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary),
                    ),
                    //platform and skill
                    Row(
                      children: [
                        //platform
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 450),
                          child: Wrap(
                            children: [
                              for (int i = 0; i < platformsItem.length; i++)
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: CustomColors.bgLight2,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: ListTile(
                                    leading:
                                        Image.asset(platformsItem[i]["img"]),
                                    title: Text(platformsItem[i]["title"]),
                                  ),
                                )
                            ],
                          ),
                        )
                        //skill
                      ],
                    )
                  ],
                ),
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
    });
  }
}
