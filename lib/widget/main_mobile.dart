import 'package:adityaportfolio/constants/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
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

          SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "Hi there!",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ])),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "I'M ",
                      style: TextStyle(
                          fontFamily: 'FiraCode',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              RichText(
                  text: const TextSpan(
                      text: "Aditya Gangani",
                      style: TextStyle(
                          fontFamily: 'FiraCode',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)))
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 150,
            // width: 1000,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'FiraCode',
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText(
                        'Mobile app \nDevloper',
                        textStyle: const TextStyle(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      RotateAnimatedText('Cross-Platform \nSorcerer',
                          textStyle: const TextStyle(
                            color: Colors.indigoAccent,
                          )),
                      RotateAnimatedText('Graphic designer',
                          textStyle:
                              const TextStyle(color: Colors.indigoAccent)),
                    ],
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.yellowPrimary),
                onPressed: () {},
                child: const Text(
                  'Get in touch',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                      color: CustomColors.whitePrimary),
                )),
          )
        ],
      ),
    );
  }
}
