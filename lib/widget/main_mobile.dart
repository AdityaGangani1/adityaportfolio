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

          // const Text(
          //   "HI\ni'm aditya\nflutter devloper \ngraphic designer",
          //   style: TextStyle(
          //     fontSize: 24,
          //     height: 1.5,
          //     fontWeight: FontWeight.bold,
          //     color: CustomColors.whitePrimary,
          //   ),
          // ),

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
            height: 50,
            width: 500,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // const SizedBox(
                //   width: 20.0,
                // ),
                // const Text(
                //   'Be',
                //   style: TextStyle(fontSize: 40.0),
                // ),
                // const SizedBox(
                //   width: 20.0,
                // ),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'FiraCode',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('Mobile app Devloper',
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.indigoAccent)),
                      RotateAnimatedText('Cross-Platform Sorcerer',
                          textStyle:
                              const TextStyle(color: Colors.indigoAccent)),
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
                      fontFamily: 'Montserrat',
                      color: CustomColors.whitePrimary),
                )),
          )
        ],
      ),
    );
  }
}
