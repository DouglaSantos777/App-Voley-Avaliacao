import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voleiball/themes/constants.dart';
import 'package:voleiball/screens/modal_page.dart';
import 'package:voleiball/screens/score_page.dart';
import 'package:voleiball/widgets/main_button.dart';
import 'package:voleiball/widgets/voley_court.dart';
import 'package:voleiball/widgets/side_panel.dart';
import 'package:voleiball/widgets/team_simbol.dart';
import 'package:voleiball/widgets/time_display.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundGame,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButton(
                      color: kWhiteColor,
                    ),
                    IconButton(
                      onPressed: () {
                        showModal(context);
                      },
                      icon: const Icon(Icons.settings, size: 35),
                      color: kWhiteColor,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Flexible(
                    flex: 1,
                    child: SidePanel(
                      actions: ["Ace", "Ataque", "Bloqueio", "Erro"],
                      onButtonPressed: [],
                      isLeftSide: true,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: TeamSimbol(
                                letter: "A",
                                teamName: "Ziraldos",
                              ),
                            ),
                            Expanded(
                              child: TeamSimbol(
                                letter: "B",
                                teamName: "Autoconvidados",
                              ),
                            ),
                          ],
                        ),
                        VoleyCourt(
                          teamAScore: "12",
                          teamBScore: "22",
                          teamAName: "Ziraldos",
                          teamBName: "Autoconvidados",
                          isTeamAServing: true,
                          onPlacarGeralPressed: () {},
                        ),
                        const TimeDisplay(
                          mainTime: "Tempo de jogo: 1:14'",
                          subTime: "00''",
                        ),
                        MainButton(
                          text: "Placar Geral",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScorePage()),
                            );
                          },
                          padding: const EdgeInsets.all(4.0),
                          isOutlined: true,
                        ),
                      ],
                    ),
                  ),
                  const Flexible(
                    child: SidePanel(
                      actions: ["Ace", "Ataque", "Bloqueio", "Erro"],
                      onButtonPressed: [],
                      isLeftSide: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
