import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kBottomContainerHeight = 80.0;
const Color kGeneralContainerColors = Color(0xFF1D1E34);
const Color kInactiveCardColor = Color(0xFF111328);
const Color kBottomContainerColor = Color(0xFFEB1555);
const IconData kMaleIcon = FontAwesomeIcons.mars;
const IconData kFemaleIcon = FontAwesomeIcons.venus;

const kSliderThemeData = SliderThemeData(
    inactiveTrackColor: Colors.grey,
    overlayColor: Color(0x1FEB1555),
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
    activeTrackColor: Colors.white,
    thumbColor: Colors.pink,
    overlayShape: RoundSliderOverlayShape(overlayRadius: 30));



const TextStyle kTextstyle = TextStyle(fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold);

const TextStyle kNumberTextStyle =
    TextStyle(fontSize: 50, fontWeight: FontWeight.w900);
