import 'dart:math';

import 'package:flutter/material.dart';

import 'input_page.dart';

Color resultColor = Colors.green;
String resultString = "";
String infoString = "";

String calculateResult() {
  if (bmi <= 18.4) {
    resultString = "UnderWeight";
    resultColor = Colors.pinkAccent;
    infoString = "You are under weighted. Eat more and exercise more";
  }
  if (bmi > 18.5 && bmi < 24.9) {
    resultString = "Normal";
    resultColor = Colors.green;
    infoString = "You have Normal BMI, which means you are doing great";
  }
  if (bmi > 25 && bmi < 39.9) {
    resultString = "OverWeight";
    resultColor = Colors.redAccent;
    infoString =
        "You have a higher then normal body weight. try to exercise more.";
  }
  if (bmi >= 40) {
    resultString = "Obese";
    resultColor = Colors.red;
    infoString = "You have Obese body weight. try to exercise more.";
  }
  return resultString;
}

double calculateBmi() {
  double dHeight = height.toDouble();
  dHeight = height / 100;

  bmi = weight / pow(dHeight, 2);

  return bmi;
}
