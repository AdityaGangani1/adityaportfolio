import 'package:adityaportfolio/constants/colors.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHight,
      constraints: const BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avtar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColors.scaffoldBg.withOpacity(0.6),
                CustomColors.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/dash.png',
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          const Text(
            "HI\ni'm aditya\nflutter devloper \ngraphic designer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('get in touch')),
          )
        ],
      ),
    );
  }
}
