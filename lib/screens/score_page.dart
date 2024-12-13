import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';

import 'package:voleiball/widgets/final_score.dart';
import 'package:voleiball/widgets/time_display.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    {
      List<Map<String, dynamic>> teamAInfo = [
        {"teamName": "Ziraldos", "points": 25, "color": kButtonColor},
        {"teamName": "Ziraldos", "points": 25, "color": kButtonColor},
        {"teamName": "Ziraldos", "points": 10, "color": kYellowColor},
        {"teamName": "Sparrings", "points": 25, "color": kButtonColor},
      ];
      List<Map<String, dynamic>> teamBInfo = [
        {"teamName": "Sparrings", "points": 10, "color": kYellowColor},
        {"teamName": "Sicranos", "points": 10, "color": kYellowColor},
        {"teamName": "Autoconvidados", "points": 25, "color": kButtonColor},
        {"teamName": "Autoconvidados", "points": 10, "color": kYellowColor},
      ];

      return Scaffold(
        backgroundColor: kBackgroundGame,
        appBar: AppBar(
          title: const Text(
            "PLACAR GERAL",
            style: TextStyle(color: kButtonColor, fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.show_chart, size: 30),
            ),
          ],
          centerTitle: true,
          backgroundColor: kBackgroundGame,
          iconTheme: const IconThemeData(color: kWhiteColor),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bar_chart_sharp,
                            color: kWhiteColor, size: 30),
                        Icon(Icons.bar_chart_sharp,
                            color: kWhiteColor, size: 30),
                        Icon(Icons.bar_chart_sharp,
                            color: kWhiteColor, size: 30),
                        Icon(Icons.bar_chart_sharp,
                            color: kWhiteColor, size: 30),
                      ],
                    ),
                    FinalScore(
                      teamAInfo: teamAInfo,
                      teamBInfo: teamBInfo,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                    top: BorderSide(color: kWhiteColor, width: 1),
                    bottom: BorderSide(color: kWhiteColor, width: 1),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ziraldos: ",
                          style: TextStyle(color: kWhiteColor, fontSize: 28),
                        ),
                        Text(
                          "3",
                          style: TextStyle(color: kButtonColor, fontSize: 28),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Sicranos: ",
                          style: TextStyle(color: kWhiteColor, fontSize: 28),
                        ),
                        Text(
                          "1",
                          style: TextStyle(color: kButtonColor, fontSize: 28),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Autoconvidados: ",
                          style: TextStyle(color: kWhiteColor, fontSize: 28),
                        ),
                        Text(
                          "8",
                          style: TextStyle(color: kButtonColor, fontSize: 28),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Sparrings: ",
                          style: TextStyle(color: kWhiteColor, fontSize: 28),
                        ),
                        Text(
                          "8",
                          style: TextStyle(color: kButtonColor, fontSize: 28),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      );
    }
  }
}
