import 'package:flutter/material.dart';
import 'package:voleiball/themes/styles.dart';

class TimeDisplay extends StatelessWidget {
  final String mainTime;
  final String subTime;
  final TextStyle mainTimeStyle;
  final TextStyle subTimeStyle;

  const TimeDisplay({
    super.key,
    required this.mainTime,
    required this.subTime,
    this.mainTimeStyle = AppTextStyles.style8, 
    this.subTimeStyle = AppTextStyles.style9,  
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
