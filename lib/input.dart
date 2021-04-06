import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void colorUpdater(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveColor) {
        maleCardColor == activeColor;
        femaleCardColor == inactiveColor;
      } else {
        maleCardColor == inactiveColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor == activeColor;
        maleCardColor == inactiveColor;
      } else {
        femaleCardColor == inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        colorUpdater(Gender.male);
                      });
                    },
                    child: Reusablecard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      color: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        colorUpdater(Gender.female);
                      });
                    },
                    child: Reusablecard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reusablecard(
                color: activeColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusablecard(
                      color: activeColor,
                    ),
                  ),
                  Expanded(
                    child: Reusablecard(
                      color: activeColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
