import 'package:flutter/material.dart';
import 'package:voleiball/widgets/game_action.dart';

class SidePanel extends StatelessWidget {
  final List<String> actions;
  final List<VoidCallback> onButtonPressed;
  final bool isLeftSide;

  const SidePanel({
    super.key,
    required this.actions,
    required this.onButtonPressed,
    this.isLeftSide = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: isLeftSide
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end, 
      children: List.generate(actions.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: GameAction(
            text: actions[index],
            isLeftSide: isLeftSide, 
          ),
        );
      }),
    );
  }
}
