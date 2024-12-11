import 'package:flutter/material.dart';
import 'package:voleiball/aux/constants.dart';
import 'package:voleiball/widgets/main_button.dart';

void showModal(BuildContext context) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0),
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent, 
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,  
          height: MediaQuery.of(context).size.height * 0.8, 
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.7),  
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: kBorderColor, 
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'FIM DE SET',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: kButtonColor),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   Text(
                'Autoconvidados',
                style: TextStyle(fontSize: 60, color: kButtonColor, fontWeight: FontWeight.w500),
              ),
              Text(
                'VENCEU',
                style: TextStyle(fontSize: 20, color: kButtonColor),
              ),
                ],
              ),   
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 MainButton(text: "Terminar", onPressed: (){}, isOutlined: true, padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12)),
                 MainButton(text: "Novo Set", onPressed: (){}, isOutlined: true, padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12), colorText: kAccentColor,)
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
