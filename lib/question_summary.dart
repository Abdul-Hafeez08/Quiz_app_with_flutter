import 'package:flutter/material.dart';
import 'package:quiz_app_with_result/question_items.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return QuestionItems(data);
          }).toList(),
        ),
      ),
    );
  }
}
