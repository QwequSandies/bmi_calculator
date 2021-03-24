import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: Reusablecard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Reusablecard(
                color: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Reusablecard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    color: Color(0xFF1D1E33),
                  ),
                )
              ],
            )),
          ],
        ));
  }
}

class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
