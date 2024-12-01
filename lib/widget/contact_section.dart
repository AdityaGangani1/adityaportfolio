import 'package:adityaportfolio/constants/colors.dart';
import 'package:adityaportfolio/constants/size.dart';
import 'package:adityaportfolio/utils/social_icons.dart';
import 'package:adityaportfolio/widget/custom_text_field.dart';
import 'package:adityaportfolio/widget/email_form.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      // color: CustomColors.bgLight1,
      child: Column(
        children: [
          //title

          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 380),
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
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 20,
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
        Flexible(child: EmailForm()
            //     CustomTextField(
            //   hintText: "Your name",

            // )
            ),
        SizedBox(
          width: 15,
        ),
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
