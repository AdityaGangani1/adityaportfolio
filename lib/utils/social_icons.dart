import 'package:adityaportfolio/constants/sns_links.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

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
              // Navigate to
              js.context.callMethod('open', [SnsLinks.linkedin]);
            },
          ),
          _buildSocialCard(
            context,
            FontAwesomeIcons.github,
            'Github',
            Colors.grey,
            () {
              // Navigate to Twitter

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
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.3),
                blurRadius: 8,
                spreadRadius: 2,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 35),
              const SizedBox(height: 10),
              Text(
                label,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
