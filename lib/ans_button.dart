import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  AnsButton({super.key, required this.anstext, required this.onTap});
  final String anstext;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            backgroundColor: const Color(0xFF01BA76),
            foregroundColor: Colors.white),
        child: Text(
          anstext,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ));
  }
}
