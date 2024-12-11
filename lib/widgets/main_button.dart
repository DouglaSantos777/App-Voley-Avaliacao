import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOutlined;
  final EdgeInsetsGeometry padding;
  final Color colorText;

  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.colorText = kWhiteColor,
    this.isOutlined = false,
    this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
  });

  @override
  Widget build(BuildContext context) {
    return isOutlined
        ? OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: kBorderColor, width: 3),
                backgroundColor: kButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Padding(
               padding: padding,
              child: Text(
                text,
                style: TextStyle(color: colorText, fontSize: 30),
              ),
            ),
          )
        : TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(color: colorText, fontSize: 26),
            ),
          );
  }
}
