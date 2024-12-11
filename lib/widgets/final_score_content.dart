import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/widgets/team_simbol.dart';

class FinalScoreContent extends StatelessWidget {
  final String score;
  final bool isServing;
  final List<String> additionalInfo;
  final TeamSimbol teamSimbol; 

  const FinalScoreContent({
    super.key,
    required this.score,
    required this.isServing,
    required this.additionalInfo, 
    required this.teamSimbol, 
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
        Expanded(
          flex: 1,
          child: teamSimbol,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: additionalInfo.map((info) {
              return Text(
                info,
                style: const TextStyle(color: kWhiteColor, fontSize: 16),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
