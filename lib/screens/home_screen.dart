import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';
import 'package:voleiball/widgets/add_button.dart';
import 'package:voleiball/widgets/header.dart';
import 'package:voleiball/widgets/main_button.dart';
import 'package:voleiball/screens/game_page.dart';
import 'package:voleiball/widgets/team_widget.dart';
import 'package:voleiball/widgets/times_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Header(
                  imagePath: "assets/images/ball.png",
                  title: "Volley",
                  subtitle: "do fim de semana",
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: TimesCard(title: "TIMES")),
                    Expanded(
                      child: Column(
                        children: [
                          TeamWidget(teamName: 'Sicranos', playerCount: '3'),
                          TeamWidget(
                              teamName: 'Autoconvidados', playerCount: '3'),
                          TeamWidget(teamName: 'Ziraldos', playerCount: '4'),
                          TeamWidget(teamName: 'Sparrings', playerCount: '5'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    MainButton(
                      text: "Jogo Casado",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MainButton(
                      text: "Iniciar",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GamePage()),
                        );
                      },
                      isOutlined: true,
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: AddButton(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
