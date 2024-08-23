import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/size.dart';
import 'package:adityaportfolio/utils/projects_utils.dart';
import 'package:adityaportfolio/widget/custom_text_field.dart';
import 'package:adityaportfolio/widget/drawer_mobile.dart';
import 'package:adityaportfolio/widget/header_desktop.dart';
import 'package:adityaportfolio/widget/header_mobile.dart';
import 'package:adityaportfolio/widget/main_desktop.dart';
import 'package:adityaportfolio/widget/main_mobile.dart';
import 'package:adityaportfolio/widget/project_card.dart';
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

              // const SizedBox(
              //   height: 30,
              // ),
              // //PROJECTS
              // ProjectSection(),
              // const SizedBox(
              //   height: 30,
              // ),

              //CONTACT
              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColors.bgLight1,
                child: Column(
                  children: [
                    //title
                    Text(
                      "Get in touch",
                      style: TextStyle(
                          fontSize: 24, color: CustomColors.whitePrimary),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: Row(
                        children: [
                          //name
                          Flexible(
                              child: CustomTextField(
                            hintText: "Your name",
                          )),
                          const SizedBox(
                            width: 15,
                          ),
                          //email
                          Flexible(
                              child: CustomTextField(
                            hintText: "Email name",
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: CustomTextField(
                        hintText: "Your Message",
                        maxline: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //button
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 700),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Get in touch")),
                      ),
                    )
                  ],
                ),
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
