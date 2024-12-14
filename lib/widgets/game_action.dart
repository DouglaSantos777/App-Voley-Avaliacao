import 'package:flutter/material.dart';
import 'package:voleiball/widgets/add_button.dart';

class GameAction extends StatelessWidget {
  final String text;
  final bool isLeftSide;

  const GameAction({
    super.key,
    required this.text,
    this.isLeftSide = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: isLeftSide
          ? [
              const AddButton(),
              const SizedBox(width: 20),
              SizedBox(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ]
          : [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              const AddButton(),
            ],
    );
  }
}
