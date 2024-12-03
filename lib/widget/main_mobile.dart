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
      constraints: const BoxConstraints(minHeight: 600),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avtar image
          // ShaderMask(
          //   shaderCallback: (bounds) {
          //     return LinearGradient(colors: [
          //       CustomColors.scaffoldBg.withOpacity(0.6),
          //       CustomColors.scaffoldBg.withOpacity(0.6),
          //     ]).createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcATop,
          //   child: Image.asset(
          //     'assets/dash.jpeg',
          //     height: 250,
          //     width: screenWidth,
          //   ),
          // ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff252734), Color.fromARGB(255, 13, 70, 127)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            height: screenHight / 1.50,
            width: 380,
          ),
          const SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 25,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  height: 20,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "I'M ",
                      style: TextStyle(
                          fontFamily: 'FiraCode',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              RichText(
                  text: const TextSpan(
                      text: "Aditya Gangani",
                      style: TextStyle(
                          fontFamily: 'FiraCode',
                          fontSize: 24,
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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText(
                        'Mobile app Devloper',
                        textStyle: const TextStyle(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      RotateAnimatedText('Cross-Platform Sorcerer',
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
          Center(
            child: SizedBox(
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
            ),
          )
        ],
      ),
    );
  }
}
