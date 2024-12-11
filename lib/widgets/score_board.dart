import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/widgets/score_board_content.dart';

class ScoreBoard extends StatelessWidget {
  final String teamAScore;
  final String teamBScore;
  final String teamAName;
  final String teamBName;
  final bool isTeamAServing;
  final VoidCallback onPlacarGeralPressed;

  const ScoreBoard({
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
       width: MediaQuery.of(context).size.width * 0.5,  
          height: MediaQuery.of(context).size.height * 0.35,
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
            child: ScoreBoardContent(
              score: teamAScore,
              isServing: isTeamAServing,
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            color: kWhiteColor,
            width: 20,
          ),
          Expanded(
            child: ScoreBoardContent(
              score: teamBScore,
              isServing: !isTeamAServing,
            ),
          ),
        ],
      ),
    );
  }
}

