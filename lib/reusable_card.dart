import 'package:flutter/material.dart';

//ResuableCard - Creates containers (cards).
class ResuableCard extends StatelessWidget {
  const ResuableCard(
      {required this.colour, required this.cardChild, required this.onPressed});

  final Color colour;
  final Widget cardChild;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colour,
          ),
          child: cardChild,
        ));
  }
}
