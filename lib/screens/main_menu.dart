import 'package:empower_ability/screens/speech_to_text.dart';
import 'package:empower_ability/screens/text_to_speech.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("EmpowerAbility"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TextToSpeech()));
              },
              icon: Image.asset('lib/icons/text-to-speech.png')),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Image.asset('lib/icons/speech-to-text.png')),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Text to speech",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              "Speech to text",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}