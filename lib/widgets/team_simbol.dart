import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/aux/styles.dart';

class TeamSimbol extends StatelessWidget {
  final String letter;
  final double size;
  final Color backgroundColor;
  final Color textColor;
  final String teamName;

  const TeamSimbol({
    super.key,
    required this.letter,
    this.size = 55.0,
    this.backgroundColor = kBorderColor,
    this.textColor = kButtonColor,
    this.teamName = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            letter,
            style: TextStyle(
              color: textColor,
              fontSize: size * 0.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (teamName.isNotEmpty) 
          Text(
            teamName,
            style: AppTextStyles.headline7,
          ),
      ],
    );
  }
}
