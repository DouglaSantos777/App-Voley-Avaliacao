import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';

class ScoreBoardContent extends StatelessWidget {
  final String score;
  final bool isServing;

  const ScoreBoardContent({
    super.key,
    required this.score,
    required this.isServing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isServing)
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center, 
              child: Image.asset(
                "assets/images/ball.png",
                width: 100,
                height: 100,
              ),
            ),
          ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              score,
              style: const TextStyle(
                color: kWhiteColor,
                fontSize: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
