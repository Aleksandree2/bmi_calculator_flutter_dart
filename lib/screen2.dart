import 'package:bmi_calculator/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'reusable_card.dart';

import 'bmi_brain.dart';








class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("BMI CALCULATOR")),
        ),
        body: Column(children: [

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Result", style: kNumberTextStyle),
                Expanded(
                  child: ResuableCard(
                      onPressed: () {},
                      colour: kGeneralContainerColors,
                      cardChild:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Text(calculateResult(), style: TextStyle(fontSize: 40, color: resultColor)),
                         const  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [],
                          ),
                          Text(calculateBmi().toStringAsFixed(1), style: kNumberTextStyle,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(child: Text(infoString, style: TextStyle(fontSize: 25),)),
                          ) ,
                        ],
                      ))

                ),

                Container(
                  color: kBottomContainerColor,
                  margin: const EdgeInsets.only(top: 15),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  child:  Center(
                       child: GestureDetector(
                         onTap: (){
                           Navigator.pushNamed(context, '/rInputPage');
                         },
                         child: const Text(
                          "RE-CALCULATE",
                          style: kTextstyle,
                                               ),
                       )),
                )
              ],
            ),
          )
        ]));
  }
}
