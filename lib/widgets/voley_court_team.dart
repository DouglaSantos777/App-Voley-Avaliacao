import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';

class VoleyCourtTeam extends StatelessWidget {
  final String score;
  final bool isServing;

  const VoleyCourtTeam({
    super.key,
    required this.score,
    required this.isServing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isServing)
          Flexible(
            
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/ball.png",
                width: 50,
                height: 50,
              ),
            ),
          ),
        Flexible(
         
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              score,
              style: const TextStyle(
                color: kWhiteColor,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
