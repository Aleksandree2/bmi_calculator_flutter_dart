
import 'constants.dart';
import 'package:flutter/material.dart';

class CardChildColumn extends StatelessWidget {
  const CardChildColumn(this.childIcon, this.childText, this.iconColor);

  final IconData childIcon;
  final String childText;
  final Color iconColor;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          childIcon,
          color: iconColor,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          childText,
          style: kTextstyle,
        )
      ],
    );
  }
}
