import 'package:flutter/material.dart';

class QuestionIdentify extends StatelessWidget {
  const QuestionIdentify(
      {super.key, required this.iscorrectans, required this.questionindex});
  final int questionindex;
  final bool iscorrectans;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionindex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: iscorrectans ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
