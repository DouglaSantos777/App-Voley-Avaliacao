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
      children: isLeftSide
          ? [
              const AddButton(),
              const SizedBox(width: 20),
              SizedBox(
                width: 115,
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
              SizedBox(
                width: 115,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              const AddButton(),
            ],
    );
  }
}
