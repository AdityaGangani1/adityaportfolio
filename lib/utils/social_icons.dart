import 'dart:js' as js;

import 'package:adityaportfolio/constants/sns_links.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatefulWidget {
  const SocialIcons({super.key});

  @override
  State<SocialIcons> createState() => _SocialIconsState();
}

class _SocialIconsState extends State<SocialIcons> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 20, // Space between icons
        runSpacing: 20, // Space between rows
        children: [
          _buildSocialCard(
            context,
            FontAwesomeIcons.linkedin,
            'LinkedIn',
            Colors.blueAccent,
            () {
              js.context.callMethod('open', [SnsLinks.linkedin]);
            },
          ),
          _buildSocialCard(
            context,
            FontAwesomeIcons.github,
            'Github',
            Colors.grey.shade500,
            () {
              js.context.callMethod('open', [SnsLinks.github]);
            },
          ),
          _buildSocialCard(
            context,
            FontAwesomeIcons.twitter,
            'Twitter',
            Colors.blue,
            () {
              // Navigate to
              js.context.callMethod('open', [SnsLinks.twitter]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSocialCard(
    BuildContext context,
    IconData icon,
    String label,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
        onTap: onTap,
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff252734),
                        Color.fromARGB(255, 13, 70, 127)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 80,
                  width: 80,
                ),
                Positioned.fill(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, color: color, size: 40),
                    ],
                  ),
                ),
              ],
            )));
  }
}
