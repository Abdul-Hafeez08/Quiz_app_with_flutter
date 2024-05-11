import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    Color mycolor = const Color(0xFF01BA76);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/quiz.png',
            ),
            width: 100,
          ),
          const SizedBox(height: 20),
          Text(
            "ECAT Quiz App",
            style: GoogleFonts.lato(
                color: mycolor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 20),
          const Opacity(
            opacity: 0,
            child: Image(
              image: AssetImage('assets/images/quiz_timer.png'),
              width: 80,
            ),
          ),
          const SizedBox(height: 300),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: startQuiz,
                icon: Icon(
                  Icons.arrow_forward,
                  color: mycolor,
                ),
                label: Text(
                  "Start Quiz",
                  style: GoogleFonts.lato(color: mycolor, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
