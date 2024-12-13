import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';
import 'package:voleiball/themes/styles.dart';

class TimesCard extends StatelessWidget {
  final String title;

  const TimesCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: kWhiteColor, width: 2),
        color: kSecondaryColor,
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          title,
          style: AppTextStyles.style3,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
