import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  //we will pass a argument called "text"
  const StyledBodyText(this.text, {super.key});

  //and save the argument here.
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color.fromARGB(255, 134, 44, 44),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
