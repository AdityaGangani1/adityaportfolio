import 'package:adityaportfolio/constants/colors.dart';
import 'package:flutter/material.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "HI\n i'm aditya\nflutter devloper \ngraphic designer",
                style: TextStyle(
                  fontSize: 25,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary,
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('get in touch')),
              )
            ],
          ),
          Image.asset(
            'assets/dash.png',
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
