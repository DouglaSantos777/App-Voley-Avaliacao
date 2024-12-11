import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/screens/end_set_page.dart';
import 'package:voleiball/screens/score_page.dart';
import 'package:voleiball/widgets/main_button.dart';
import 'package:voleiball/widgets/score_board.dart';
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
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: kWhiteColor,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModal(context);
            },
            icon: const Icon(Icons.settings, size: 30),
          ),
        ],
        backgroundColor: kBackgroundGame,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SidePanel(
                      actions: ["Ace", "Ataque", "Bloqueio", "Erro"],
                      onButtonPressed: [],
                      isLeftSide: true,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TeamSimbol(letter: "A", teamName: "Ziraldos"),
                                TeamSimbol(
                                    letter: "B", teamName: "Autoconvidados"),
                              ],
                            ),
                          ),
                        ),
                        ScoreBoard(
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
                    const SidePanel(
                      actions: ["Ace", "Ataque", "Bloqueio", "Erro"],
                      onButtonPressed: [],
                      isLeftSide: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
