import 'package:flutter/material.dart';
import 'package:quiz_app_with_result/question_identify.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionItems extends StatelessWidget {
  const QuestionItems(this.itemData, {super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final iscorrectans = itemData['user_ans'] == itemData['correct_ans'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: QuestionIdentify(
                iscorrectans: iscorrectans,
                questionindex: itemData['question_index'] as int),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Your Ans",
                style: TextStyle(color: Colors.black45, fontSize: 10),
              ),
              Text(
                itemData['user_ans'] as String,
                style: const TextStyle(color: Colors.red),
              ),
              const Text(
                "Correct Ans",
                style: TextStyle(color: Colors.black45, fontSize: 10),
              ),
              Text(
                itemData['correct_ans'] as String,
                style: const TextStyle(color: Colors.green),
              )
            ],
          ))
        ],
      ),
    );
  }
}
