import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';

class Header extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const Header({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: kWhiteColor,
                fontSize: 42,
                height: .9,
              ),
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 9,
                  color: kWhiteColor,
                  height: 1,
                ),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ],
    );
  }
}
