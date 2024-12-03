import 'package:adityaportfolio/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.maxFinite,
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(16),
          // decoration: const BoxDecoration(
          //   color: Colors.black,
          //   gradient: LinearGradient(
          //     colors: [Color(0xFF141E30), Color(0xFF243B55)],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //   ),
          // ),
          child: const Column(
            children: [
              // Social Media Icons
              Row(),
              const SizedBox(height: 16),
              // Call to Action
              const Text(
                "Let's work together!",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              // Copyright
              const Text(
                "© 2024 Aditya Gangani. All rights reserved.",
                style: TextStyle(
                    fontFamily: 'Montserrat', color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(height: 8),
              // Built with
              const Text(
                "Built with ❤️ using Flutter 3.22.",
                style: TextStyle(
                    fontFamily: 'Montserrat', color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
          // const Text(
          //   "Made by aditya with flutter 3.10",
          //   style: TextStyle(
          //       fontFamily: 'Montserrat',
          //       fontWeight: FontWeight.w400,
          //       color: CustomColors.whiteSecondary),
          // ),
        ));
  }
}
