import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app_with_result/ans_button.dart';
import 'package:quiz_app_with_result/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_with_result/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAns});
  final void Function(String answer) onSelectAns;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAns) {
    widget.onSelectAns(selectedAns);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "${currentQuestionIndex.toString()} / ${questions.length.toString()}",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShufledAns().map((answer) {
              return AnsButton(
                  anstext: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
