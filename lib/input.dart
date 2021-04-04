import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void colorUpdater(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        // ignore: unnecessary_statements
        maleCardColor == activeColor;
        // ignore: unnecessary_statements
        femaleCardColor == inactiveColor;
      } else {
        // ignore: unnecessary_statements
        maleCardColor == inactiveColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inactiveColor) {
        // ignore: unnecessary_statements
        femaleCardColor == activeColor;
        // ignore: unnecessary_statements
        maleCardColor == inactiveColor;
      } else {
        // ignore: unnecessary_statements
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
                        colorUpdater(1);
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
                        colorUpdater(2);
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
