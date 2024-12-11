import 'package:flutter/material.dart';
import 'package:voleiball/aux/styles.dart';

class TeamWidget extends StatelessWidget {
  final String teamName;
  final String playerCount;

  const TeamWidget(
      {super.key, required this.teamName, required this.playerCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            teamName,
            style: AppTextStyles.headline4,
            ),
          const SizedBox(
            width: 5,
          ),
          Text(
            playerCount,
            style: AppTextStyles.headline5,
          ),
          const RotatedBox(
            quarterTurns: 3,
            child: SizedBox(
              width: 45,
              child: Text(
                "jogadores",
                style: AppTextStyles.headline6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
