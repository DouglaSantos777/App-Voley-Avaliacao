import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/widgets/team_simbol.dart';

class FinalScore extends StatelessWidget {
  final List<Map<String, dynamic>> teamAInfo;
  final List<Map<String, dynamic>> teamBInfo;

  const FinalScore({
    super.key,
    required this.teamAInfo,
    required this.teamBInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.5,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TeamSimbol(letter: 'A'),
                for (var info in teamAInfo)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${info['teamName']} ",
                        style: const TextStyle(color: kWhiteColor, fontSize: 18),
                      ),
                      Text(
                        "${info['points']}",
                        style: TextStyle(color: info['color'], fontSize: 20),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            color: kWhiteColor,
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TeamSimbol(letter: 'B'),
                for (var info in teamBInfo)
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${info['points']}",
                              style: TextStyle(
                                color: info['color'],
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              " ${info['teamName']}",
                              style:
                                  const TextStyle(color: kWhiteColor, fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
