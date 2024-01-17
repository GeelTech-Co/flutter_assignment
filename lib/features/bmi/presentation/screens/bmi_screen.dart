import 'package:assignment_test/features/bmi/presentation/widgets/constants.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/card_child.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/result_page.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/bottom_button.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/reusable_card.dart';
import 'package:assignment_test/core/enums/enum_gender.dart';
import 'package:flutter/material.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/calculator_brain.dart';
import 'package:assignment_test/features/bmi/presentation/widgets/round_icon_button.dart';

class BmiCalculateScreen extends StatefulWidget {
  const BmiCalculateScreen({super.key});

  @override
  BmiCalculateScreenState createState() => BmiCalculateScreenState();
}

class BmiCalculateScreenState extends State<BmiCalculateScreen> {
  Gender selectedGender = Gender.male;
  int height = 220;
  double minHeight = 200;
  double maxHeight = 220;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kActiveCardColor,
      appBar: AppBar(
        backgroundColor: kActiveCardColor,
        // foregroundColor: Colors.white,
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  width: 170,
                  child: ReusableCard(
                    onTap: () => setState(() => selectedGender = Gender.male),
                    borderColor: selectedGender == Gender.male
                        ? kBottomContainerColor
                        : null,
                    color: selectedGender == Gender.male
                        ? Colors.blue
                        : Colors.transparent,
                    cardChild: const CardChild(
                      icon: Icons.male,
                      color: Colors.black,
                      label: 'MALE',
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 170,
                  width: 170,
                  child: ReusableCard(
                    onTap: () => setState(() => selectedGender = Gender.female),
                    borderColor: selectedGender == Gender.female
                        ? kBottomContainerColor
                        : null,
                    color: selectedGender == Gender.female
                        ? Colors.blue
                        : Colors.transparent,
                    cardChild: const CardChild(
                      icon: Icons.female,
                      label: 'FEMALE',
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('HEIGHT',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text('$height', style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                      const Text('cm',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.red,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      min: minHeight,
                      max: maxHeight,
                      value: height.toDouble(),
                      onChanged: (val) => setState(() => height = val.round()),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('WEIGHT', style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )),
                      const SizedBox(height: 10,),
                      Text('$weight', style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: Icons.remove,
                            onPressed: () => setState(() => weight--),
                          ),
                          const SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: Icons.add,
                            onPressed: () => setState(() => weight++),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('AGE', style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )),
                      const SizedBox(height: 10,),
                      Text('$age', style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      )),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: Icons.remove,
                            onPressed: () => setState(() => age--),
                          ),
                          const SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: Icons.add,
                            onPressed: () => setState(() => age++),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            BottomButton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      resultText: calc.getResult(),
                      bmiResult: calc.calculateBMI(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
