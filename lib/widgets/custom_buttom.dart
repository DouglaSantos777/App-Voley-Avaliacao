import 'package:flutter/material.dart';
import 'package:voleiball/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOutlined;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return isOutlined
        ? OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: kWhiteColor, width: 2),
                backgroundColor: kButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 50),
              child: Text(
                text,
                style: const TextStyle(color: kWhiteColor, fontSize: 30),
              ),
            ),
          )
        : TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(color: kWhiteColor, fontSize: 26),
            ),
          );
  }
}
