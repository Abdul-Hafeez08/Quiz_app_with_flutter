import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_with_result/data/questions.dart';
import 'package:quiz_app_with_result/quiz.dart';
import 'package:quiz_app_with_result/question_summary.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAns});

  final List<String> chosenAns;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAns.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_ans': questions[i].answers[0],
        'user_ans': chosenAns[i],
      });
    }
    return summary;
  }

  Color mycolor = const Color(0xFF01BA76);
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData.where((data) {
      return data['user_ans'] == data['correct_ans'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            Text(
              "Correct Ans $correctQuestions Out Of $totalQuestions",
              style: GoogleFonts.lato(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(height: 5),
            Expanded(child: QuestionSummary(summaryData)),
            const SizedBox(height: 5),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Quiz()));
                },
                child: Text(
                  "Exit",
                  style: GoogleFonts.lato(color: mycolor),
                )),
          ],
        ),
      ),
    );
  }
}
