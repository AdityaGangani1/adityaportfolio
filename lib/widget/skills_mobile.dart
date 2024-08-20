import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/skill_items.dart';
import 'package:flutter/material.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //platform mobile
        for (int i = 0; i < platformsItem.length; i++)
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: CustomColors.bgLight2,
                borderRadius: BorderRadius.circular(5)),
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              leading: Image.asset(
                platformsItem[i]['img'],
                width: 26,
              ),
              title: Text(platformsItem[i]['title']),
            ),
          ),
        SizedBox(
          height: 50,
        ),

        //skill mobile
        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
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
                avatar: Image.asset(skillItem[i]["img"]),
              )
          ],
        )
      ],
    );
  }
}
