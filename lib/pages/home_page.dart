import 'dart:js' as js;

import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/size.dart';
import 'package:adityaportfolio/widget/contact_section.dart';
import 'package:adityaportfolio/widget/drawer_mobile.dart';
import 'package:adityaportfolio/widget/education_header.dart';
import 'package:adityaportfolio/widget/education_mobile.dart';
import 'package:adityaportfolio/widget/email_form.dart';
import 'package:adityaportfolio/widget/footer.dart';
import 'package:adityaportfolio/widget/header_desktop.dart';
import 'package:adityaportfolio/widget/header_mobile.dart';
import 'package:adityaportfolio/widget/main_desktop.dart';
import 'package:adityaportfolio/widget/main_mobile.dart';
import 'package:adityaportfolio/widget/project_section.dart';
import 'package:adityaportfolio/widget/skill_desktop.dart';
import 'package:adityaportfolio/widget/skills_mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffolKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffolKey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    //call function
                    scaffolKey.currentState?.closeEndDrawer();

                    scrollToSection(navIndex);
                  },
                ),
          backgroundColor: CustomColors.scaffoldBg,
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                //MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      //call function
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onMenuTap: () {
                      scaffolKey.currentState?.openEndDrawer();
                    },
                    onLogoTap: () {},
                  ),

                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                // //SKILL
                // Container(
                //   key: navbarKeys[1],
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
                //             fontFamily: 'Montserrat',
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

                // const SizedBox(
                //   height: 30,
                // ),
                // //PROJECTS
                // ProjectSection(
                //   key: navbarKeys[2],
                // ),
                // const SizedBox(
                //   height: 30,
                // ),

                // // EDUCATION
                // if (constraints.maxWidth >= kMinDesktopWidth)
                //   EducationHeader()
                // else
                //   EducationMobile(),
                // const SizedBox(
                //   height: 30,
                // ),

                // // //CONTACT
                // ContactSection(
                //   key: navbarKeys[3],
                // ),

                // const SizedBox(
                //   height: 30,
                // ),

                // // //FOOTER
                // Footer(),
              ],
            ),
          ));
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open blog
      js.context.callMethod('open', []);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
//jiv na risk so u do job with sitting
