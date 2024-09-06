import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/skill_items.dart';
import 'package:flutter/material.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platform
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformsItem.length; i++)
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: CustomColors.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: Image.asset(
                      platformsItem[i]["img"],
                      width: 26,
                    ),
                    title: Text(platformsItem[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),
        //skill

        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillItem.length; i++)
                  Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: CustomColors.bgLight2,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    label: Text(
                      skillItem[i]["title"],
                    ),
                    avatar: Image.asset(
                      skillItem[i]["img"],
                    ),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
