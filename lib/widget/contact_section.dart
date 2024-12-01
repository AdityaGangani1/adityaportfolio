import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/size.dart';
import 'package:adityaportfolio/utils/social_icons.dart';
import 'package:adityaportfolio/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColors.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get in touch",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'Montserrat',
                fontSize: 24,
                color: CustomColors.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= kMinDesktopWidth) {
                    return buildEmailFieldDesktop();
                  } else {
                    return buildEmailFieldMobile();
                  }
                },
              )),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your Message",
              maxline: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              // child: CustomButton(),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(280, 50),
                      backgroundColor: CustomColors.scaffoldBg),
                  onPressed: () {},
                  child: const Text(
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat',
                      ),
                      "Get in touch")),
            ),
          ),

          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          //SNS button
          const Column(
            children: [
              Text(
                "Find me on",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    color: CustomColors.whitePrimary),
              ),
              SizedBox(
                height: 30,
              ),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: [
                  SocialIcons(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildEmailFieldDesktop() {
    return const Row(
      children: [
        //name
        Flexible(
            child: CustomTextField(
          hintText: "Your name",
        )),
        SizedBox(
          width: 15,
        ),
        //email
        Flexible(
            child: CustomTextField(
          hintText: "Email name",
        )),
      ],
    );
  }

  Column buildEmailFieldMobile() {
    return const Column(
      children: [
        //name
        Flexible(
            child: CustomTextField(
          hintText: "Your name",
        )),
        SizedBox(
          height: 15,
        ),
        //email
        Flexible(
            child: CustomTextField(
          hintText: "Email name",
        )),
      ],
    );
  }
}
