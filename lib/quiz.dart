import 'package:flutter/material.dart';
import 'package:quzi_app/data/questions.dart';
import 'package:quzi_app/questions_screen.dart';
import 'package:quzi_app/result_screen.dart';
import 'package:quzi_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          switchScreen,
          chosenAnswers: selectedAnswer,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      selectedAnswer = [];
      activeScreen = QuestionsScreen(
        onSelecetAnswer: chooseAnswer,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 56, 13, 131),
            Color.fromARGB(255, 83, 8, 130)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: activeScreen,
      )),
    );
  }
}
