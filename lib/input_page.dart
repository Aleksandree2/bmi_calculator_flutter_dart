
import 'package:flutter/material.dart';

import 'card_child.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_brain.dart';

enum Genders { female, male }






class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
int height = 180;
int weight = 60;
int age = 20;
double bmi = 0;


class _InputPageState extends State<InputPage> {
  Genders? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        )),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ResuableCard(
                  onPressed: () {
                    setState(() {
                      selectedGender = Genders.male;
                    });
                  },
                  colour: selectedGender == Genders.male
                      ? kGeneralContainerColors
                      : kInactiveCardColor,
                  cardChild: const CardChildColumn(kMaleIcon, "Male", Colors.blue),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Genders.female;
                    });
                  },
                  child: ResuableCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Genders.female;
                        });
                      },
                      colour: selectedGender == Genders.female
                          ? kGeneralContainerColors
                          : kInactiveCardColor,
                      cardChild: const CardChildColumn(kFemaleIcon, "Female", Colors.pinkAccent)),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ResuableCard(
                onPressed: () {
                  setState(() {});
                },
                colour: kGeneralContainerColors,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: kTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          "cm",
                          style: kTextstyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: kSliderThemeData,
                      child: Slider(
                          value: height.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          min: 120,
                          max: 220),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ResuableCard(
                    onPressed: () {
                      setState(() {});
                    },
                    colour: kGeneralContainerColors,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("WEIGHT", style: kTextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(weight.toString(), style: kNumberTextStyle),
                            Text(" kg", style: kTextstyle)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                childIcon: FontAwesomeIcons.minus,
                                updateWidget: () {
                                  setState(() {
                                    weight > 30
                                        ? weight--
                                        : print("weight can't be less then 27");
                                  });
                                }),
                            SizedBox(width: 15),
                            RoundIconButton(
                                childIcon: FontAwesomeIcons.plus,
                                updateWidget: () {
                                  setState(() {
                                    weight++;
                                  });
                                })
                          ],
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: ResuableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Genders.male;
                      });
                    },
                    colour: kGeneralContainerColors,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kTextstyle),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                childIcon: FontAwesomeIcons.minus,
                                updateWidget: () {
                                  setState(() {
                                    age == 2
                                        ? print(
                                            "We can not decrease age anymore")
                                        : age--;
                                  });
                                }),
                            SizedBox(
                              width: 15,
                            ),
                            RoundIconButton(
                                childIcon: FontAwesomeIcons.plus,
                                updateWidget: () {
                                  setState(() {
                                    age == 100
                                        ? print(
                                            "We can not increase age anymore")
                                        : age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    )),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/rScreen2');
              calculateBmi();
              calculateResult();
            },
            child: Container(
              child: Center(
                  child: Text(
                "CALCULATE",
                style: kTextstyle,
              )),
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 15),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.childIcon, required this.updateWidget});

  final IconData childIcon;
  final VoidCallback updateWidget;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6,
      child: Icon(childIcon),
      onPressed: updateWidget,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}


