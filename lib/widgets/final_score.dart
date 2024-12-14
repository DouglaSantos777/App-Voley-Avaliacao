import 'package:flutter/material.dart';
import 'package:voleiball/themes/constants.dart';
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
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.55,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TeamSimbol(letter: 'A'),
                  for (var info in teamAInfo)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Text(
                              info['teamName'],
                              style: const TextStyle(
                                color: kWhiteColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Spacer(),
                          Flexible(
                            flex: 1,
                            child: Text(
                              "${info['points']}",
                              style: TextStyle(
                                color: info['color'],
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const VerticalDivider(
              thickness: 5,
              color: kWhiteColor,
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TeamSimbol(letter: 'B'),
                  for (var info in teamBInfo)
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical:0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Spacer()
                            ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              "${info['points']}",
                              style: TextStyle(
                                color: info['color'],
                                fontSize: 24,
                              ),
                            ),
                          ),
                         Spacer(),
                          Flexible(
                            flex: 5,
                            child: Text(
                              info['teamName'],
                              style: const TextStyle(
                                color: kWhiteColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
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
