import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';

import 'package:voleiball/widgets/final_score.dart';
import 'package:voleiball/widgets/time_display.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> teamScores = [
      {"teamName": "Ziraldos", "score": 3, "color": kButtonColor},
      {"teamName": "Sicranos", "score": 1, "color": kButtonColor},
      {"teamName": "Autoconvidados", "score": 8, "color": kButtonColor},
      {"teamName": "Sparrings", "score": 8, "color": kButtonColor},
    ];

    List<Widget> buildScoreRows(List<Map<String, dynamic>> scores) {
      return scores
          .map(
            (score) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${score['teamName']}: ",
                    style: const TextStyle(color: kWhiteColor, fontSize: 28),
                  ),
                  Text(
                    "${score['score']}",
                    style: TextStyle(color: score['color'], fontSize: 28),
                  ),
                ],
              ),
            ),
          )
          .toList();
    }

    return Scaffold(
      backgroundColor: kBackgroundGame,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: kBackgroundGame,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     IconButton(
                      icon: const Icon(Icons.arrow_back,
                      size: 35,
                      color: kWhiteColor), 
                      onPressed: () {
                        Navigator.pop(context); 
                      },
                    ),
                    const Text(
                      "PLACAR GERAL",
                      style: TextStyle(color: kButtonColor, fontSize: 24),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.show_chart,
                          size: 35,
                           color: kWhiteColor),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(Icons.bar_chart_sharp, color: kWhiteColor, size: 30),
                      Icon(Icons.bar_chart_sharp, color: kWhiteColor, size: 30),
                      Icon(Icons.bar_chart_sharp, color: kWhiteColor, size: 30),
                      Icon(Icons.bar_chart_sharp, color: kWhiteColor, size: 30),
                    ],
                  ),
                  FinalScore(
                    teamAInfo: [
                      {
                        "teamName": "Ziraldos",
                        "points": 25,
                        "color": kButtonColor
                      },
                      {
                        "teamName": "Ziraldos",
                        "points": 25,
                        "color": kButtonColor
                      },
                      {
                        "teamName": "Ziraldos",
                        "points": 10,
                        "color": kYellowColor
                      },
                      {
                        "teamName": "Sparrings",
                        "points": 25,
                        "color": kButtonColor
                      },
                    ],
                    teamBInfo: [
                      {
                        "teamName": "Sparrings",
                        "points": 10,
                        "color": kYellowColor
                      },
                      {
                        "teamName": "Sicranos",
                        "points": 10,
                        "color": kYellowColor
                      },
                      {
                        "teamName": "Autoconvidados",
                        "points": 25,
                        "color": kButtonColor
                      },
                      {
                        "teamName": "Autoconvidados",
                        "points": 10,
                        "color": kYellowColor
                      },
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      TimeDisplay(mainTime: "0:24'", subTime: "90''"),
                      TimeDisplay(mainTime: "0:14'", subTime: "23''"),
                      TimeDisplay(mainTime: "0:35'", subTime: "04''"),
                      TimeDisplay(mainTime: "0:11'", subTime: "29''"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kSecondaryColor,
                border: Border(
                  top: BorderSide(color: kWhiteColor, width: 3),
                  bottom: BorderSide(color: kWhiteColor, width: 3),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: buildScoreRows(teamScores),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
