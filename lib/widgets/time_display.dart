import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';

class TimeDisplay extends StatelessWidget {
  final String mainTime;
  final String subTime;
  final TextStyle mainTimeStyle;
  final TextStyle subTimeStyle;

  const TimeDisplay({
    super.key,
    required this.mainTime,
    required this.subTime,
    this.mainTimeStyle = const TextStyle(color: kWhiteColor, fontSize: 20), 
    this.subTimeStyle = const TextStyle(color: kWhiteColor, fontSize: 16),  
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: mainTime,
            style: mainTimeStyle,
          ),
          TextSpan(
            text: subTime,
            style: subTimeStyle,
          ),
        ],
      ),
    );
  }
}
