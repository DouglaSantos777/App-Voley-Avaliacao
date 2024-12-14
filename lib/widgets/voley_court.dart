import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';
import 'package:voleiball/widgets/voley_court_team.dart';

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
          const VerticalDivider(
            thickness: 3,
            color: kWhiteColor,
            width: 20,
          ),
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
