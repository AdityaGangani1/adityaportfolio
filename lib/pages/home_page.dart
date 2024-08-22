import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/size.dart';
import 'package:adityaportfolio/widget/drawer_mobile.dart';
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
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffolKey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          backgroundColor: CustomColors.scaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   const HeaderDesktop()
              // else
              //   HeaderMobile(
              //     onMenuTap: () {
              //       scaffolKey.currentState?.openEndDrawer();
              //     },
              //     onLogoTap: () {},
              //   ),

              // if (constraints.maxWidth >= kMinDesktopWidth)
              //   const MainDesktop()
              // else
              //   const MainMobile(),

              // //SKILL
              // Container(
              //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   width: double.maxFinite,
              //   color: CustomColors.bgLight1,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       //title
              //       const Text(
              //         'What i can do',
              //         style: TextStyle(
              //             fontSize: 24,
              //             fontWeight: FontWeight.bold,
              //             color: CustomColors.whitePrimary),
              //       ),
              //       const SizedBox(
              //         height: 70,
              //       ),

              //       //platform and skill desktop
              //       if (constraints.maxWidth > kMeDesktopWidth)
              //         const SkillDesktop()
              //       else
              //         const SkillsMobile()

              //       //platform skill mobile
              //     ],
              //   ),
              // ),
              //PROJECT
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: screenWidth,
                child: Column(
                  children: [
                    //work project title
                    Text(
                      'Work Projects',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary),
                    ),

                    //work project card
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 280,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.bgLight2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //project image
                          Image.asset(
                            'assets/projects/1.jpg',
                            height: 140,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                          //title
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
                            child: Text(
                              "title",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.whitePrimary),
                            ),
                          ),
                          //subtitle
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                            child: Text(
                              "subtitle",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: CustomColors.whiteSecondary),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
