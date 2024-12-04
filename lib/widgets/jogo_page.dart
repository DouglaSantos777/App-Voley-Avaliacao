import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voleiball/constants/constants.dart';

class JogoPage extends StatefulWidget {
  const JogoPage({super.key});

  @override
  State<JogoPage> createState() => _JogoPageState();
}

class _JogoPageState extends State<JogoPage> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

   @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xff00ADC3),
      iconTheme: IconThemeData(color: Colors.white),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Configurações'),
                      content: Text('Aqui estão as configurações.'),
                      actions: [
                        TextButton(
                          child: Text('Fechar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircularButtonWithText('A', 'Ziraldos'),
                  SizedBox(width: 16), // Espaço entre os botões
                  _buildCircularButtonWithText('B', 'Autoconvidados'),
                ],
              ),
              SizedBox(height: 8),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildButtonWithTextLeft('Ace'),
                        _buildButtonWithTextLeft('Ataque'),
                        _buildButtonWithTextLeft('Bloqueio'),
                        _buildButtonWithTextLeft('Erro'),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: _buildScoreBoard(),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildButtonWithTextRight('Ace'),
                        _buildButtonWithTextRight('Ataque'),
                        _buildButtonWithTextRight('Bloqueio'),
                        _buildButtonWithTextRight('Erro'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Tempo de jogo: 1:14'00''",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2B4A8E),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Placar Geral",
                  style: TextStyle(
                    color: Color(0xffC2F2F8),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  Widget _buildCircularButtonWithText(String label, String name) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffC2F2F8),
          ),
          width: 60,
          height: 60,
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(color: Color(0xff2B4A8E), fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 4),
        Text(name, style: TextStyle(color: Color(0xff2B4A8E), fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildScoreBoard() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xffF77859),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ball.png',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10),
              Text(
                '12',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: 'Concert One',
                ),
              ),
            ],
          ),
          VerticalDivider(
            color: Colors.white,
            thickness: 2,
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '22',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontFamily: 'Concert One',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtonWithTextLeft(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff2B4A8E),
            ),
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: Icon(Icons.add, color: Colors.white),
          ),
          SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonWithTextRight(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff2B4A8E),
            ),
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}