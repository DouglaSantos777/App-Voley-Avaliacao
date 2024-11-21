import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:voleiball/constants/constants.dart';
import 'package:voleiball/widgets/custom_buttom.dart';
import 'package:voleiball/widgets/team_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "ConcertOne",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade200),
        useMaterial3: true,
      ),
      home: const Voley(),
    );
  }
}

class Voley extends StatelessWidget {
  const Voley({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ADC3),
      body: Padding(
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
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Volley",
                        style: TextStyle(
                            color: Colors.grey[50], fontSize: 42, height: 1),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "do fim de semana",
                          style: TextStyle(
                              fontSize: 9, color: Colors.grey[50], height: 1),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 55,
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: kSecondaryColor,
                      ),
                      child: const RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "TIMES",
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
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
                  CustomButton(
                    text: "Jogo Casado",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Iniciar",
                    onPressed: () {},
                    isOutlined: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 45,
                      height: 45,
                      child: FloatingActionButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: kButtonColor,
                        child: const Icon(
                          FontAwesomeIcons.plus,
                          size: 12,
                          color: kWhiteColor,
                          weight: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
