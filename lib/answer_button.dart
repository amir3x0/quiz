import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onTap,
    super.key,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(137, 7, 20, 17),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
        // minimumSize: Size(250, 10),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
