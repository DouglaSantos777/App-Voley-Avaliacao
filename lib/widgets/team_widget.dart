import 'package:flutter/material.dart';
import 'package:voleiball/constants/constants.dart';

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
            style: const TextStyle(
              color: kAccentColor,
              fontSize: 26,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            playerCount,
            style: const TextStyle(
                color: kButtonColor, 
                fontSize: 45, height: 1),
          ),
          const RotatedBox(
            quarterTurns: 3,
            child: SizedBox(
              width: 45,
              child: Text(
                "jogadores",
                style: TextStyle(
                  color: kButtonColor,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
