import 'package:adityaportfolio/constants/colors.dart';
import 'package:flutter/material.dart';

class EducationHeader extends StatelessWidget {
  const EducationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.bgLight1,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Content Section
              Column(
                children: [
                  const SizedBox(height: 20), // Space for AppBar or Padding
                  const Text(
                    "Education",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // First Card with custom height and width
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: const EducationCard(
                            title: "Master's of Computer Application",
                            institution:
                                "Charotar University of Science and Technology.",
                            year: "2024-2025",
                            color: Colors.teal,
                            imgUrl: 'charusat.png',
                          ),
                        ),
                        const SizedBox(width: 16), // Space between cards
                        // Second Card with custom height and width
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: EducationCard(
                            title: "Bachelor of Computer Applications",
                            institution: "Saurashtra University.",
                            year: "2020-2022",
                            color: Colors.orange,
                            imgUrl: 'sau.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class EducationCard extends StatelessWidget {
  final String title;
  final String institution;
  final String year;
  final Color color;
  final String imgUrl;

  const EducationCard(
      {Key? key,
      required this.title,
      required this.institution,
      required this.year,
      required this.color,
      required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                imgUrl,
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                institution,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                year,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ])));
  }
}
