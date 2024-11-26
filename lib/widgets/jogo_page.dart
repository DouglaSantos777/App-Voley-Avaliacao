import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voleiball/constants/constants.dart';

class JogoPage extends StatefulWidget {
  const JogoPage({super.key});

  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
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
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
        backgroundColor: kBackgroundGame,
      ),
      body: Center(
          child: Row(
        children: [
          Column(
            children: [
              Flex(direction: Axis.horizontal,
              children: [
                Flexible(
                flex: 1,
                child: Row(
                  children: [
                    IconButton(onPressed: (){},
                     icon: const Icon(Icons.add))
                  ],
                ),
                )
              ],)
            ],
          ),
          Column(
            children: [
              Row(
                children: [Column(), Column()],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Column(),
                      Column(),
                    ],
                  ),
                ],
              ),
              Column(),
            ],
          ),
          Column()
        ],
      )),
    );
  }
}
