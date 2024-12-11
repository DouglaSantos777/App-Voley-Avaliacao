import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';

class AddButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const AddButton({
    super.key,
    this.text = '+',
    this.backgroundColor = kButtonColor,
    this.textColor = kWhiteColor,
    this.fontSize = 40, 
    this.fontWeight = FontWeight.w300,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(0),
      child: FloatingActionButton(
        onPressed: (){},       
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Center(  
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize, 
                fontWeight: fontWeight,  
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
