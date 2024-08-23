import 'dart:js' as js;

import 'package:adityaportfolio/utils/projects_utils.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectsUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.bgLight2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //project image
          Image.asset(
            // 'assets/projects/1.jpg',
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              // "title",
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColors.whitePrimary),
            ),
          ),
          //subtitle
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style:
                  TextStyle(fontSize: 12, color: CustomColors.whiteSecondary),
            ),
          ),
          const Spacer(),
          //project footer
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            color: CustomColors.bgLight1,
            child: Row(
              children: [
                const Text(
                  "Avaliable on",
                  style: TextStyle(
                      color: CustomColors.yellowSecondary, fontSize: 10),
                ),
                const Spacer(),
                if (project.ioslink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.ioslink]);
                    },
                    child: Image.asset(
                      "assets/android.png",
                      width: 17,
                    ),
                  ),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.androidLink]);
                      },
                      child: Image.asset("assets/android.png", width: 17),
                    ),
                  ),
                if (project.weblink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.weblink]);
                      },
                      child: Image.asset("assets/android.png", width: 17),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
