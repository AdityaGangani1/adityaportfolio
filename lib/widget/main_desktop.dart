import 'package:adityaportfolio/constants/colors.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                      RichText(
                          text: const TextSpan(
                              text: "Aditya Gangani",
                              style: TextStyle(
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
                            fontFamily: 'Horizon',
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('Mobile app Devloper',
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.indigoAccent)),
                              RotateAnimatedText('Cross-Platform Sorcerer',
                                  textStyle: const TextStyle(
                                      color: Colors.indigoAccent)),
                              RotateAnimatedText('Graphic designer',
                                  textStyle: const TextStyle(
                                      color: Colors.indigoAccent)),
                            ],
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.yellowPrimary),
                        onPressed: () {},
                        child: const Text(
                          'Get in touch',
                          style: TextStyle(color: CustomColors.whitePrimary),
                        )),
                  ),
                ],
              ),
            ],
          ),

          // SizedBox(
          //   width: 300.0,
          //   child: DefaultTextStyle(
          //     style: const TextStyle(
          //       fontSize: 32.0,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     child: AnimatedTextKit(
          //       animatedTexts: [
          //         FadeAnimatedText('do IT!'),
          //         FadeAnimatedText('do it RIGHT!!'),
          //         FadeAnimatedText('do it RIGHT NOW!!!'),
          //       ],
          //     ),
          //   ),
          // ),
          Image.asset(
            'assets/dash.png',
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
