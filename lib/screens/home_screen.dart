import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/aux/styles.dart';
import 'package:voleiball/widgets/add_button.dart';
import 'package:voleiball/widgets/main_button.dart';
import 'package:voleiball/screens/game_page.dart';
import 'package:voleiball/widgets/team_widget.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/ball.png",
                      width: 45,
                      height: 45,
                    ),
                    const SizedBox(width: 15),
                    const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Volley",
                        style: TextStyle(
                            color: kWhiteColor, fontSize: 42, height: .9),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "do fim de semana",
                          style: TextStyle(
                              fontSize: 9, color: kWhiteColor, height: 1),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        width: 55,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: kWhiteColor, width: 2),
                          color: kSecondaryColor,
                        ),
                        child: const RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "TIMES",
                            style: AppTextStyles.headline3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
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
                      child: AddButton(
                        
                      ),
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
