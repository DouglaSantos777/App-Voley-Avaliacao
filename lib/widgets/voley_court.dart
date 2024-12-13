import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';

class VoleyCourt extends StatelessWidget {
  final String teamAScore;
  final String teamBScore;
  final String teamAName;
  final String teamBName;
  final bool isTeamAServing;
  final VoidCallback onPlacarGeralPressed;

  const VoleyCourt({
    super.key,
    required this.teamAScore,
    required this.teamBScore,
    required this.teamAName,
    required this.teamBName,
    required this.isTeamAServing,
    required this.onPlacarGeralPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 150,
      decoration: BoxDecoration(
        color: kOrangeColor,
        border: Border.all(
          color: kWhiteColor,
          width: 3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: VoleyCourtTeam(
              score: teamAScore,
              isServing: isTeamAServing,
            ),
          ),
          const VerticalLine(),
          Expanded(
            child: VoleyCourtTeam(
              score: teamBScore,
              isServing: !isTeamAServing,
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      thickness: 2,
      color: kWhiteColor,
      width: 20,
    );
  }
}

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
