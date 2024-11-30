import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/utils/projects_utils.dart';
import 'package:adityaportfolio/widget/project_card.dart';
import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        width: screenWidth,
        child: Column(children: [
          //work project title
          const Text(
            'Work Projects',
            style: TextStyle(
              fontFamily: 'Montserrat',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          //work project card
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCard(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            width: screenWidth,
            child: Column(
              children: [
                //Hobby project title
                const Text(
                  'Hobby Projects',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.whitePrimary),
                ),
                const SizedBox(
                  height: 50,
                ),
                //Hobby project card
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 900),
                  child: Wrap(
                    spacing: 25,
                    runSpacing: 25,
                    children: [
                      for (int i = 0; i < hobbyProjectUtils.length; i++)
                        ProjectCard(
                          project: hobbyProjectUtils[i],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
