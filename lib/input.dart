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
        body: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 200,
          width: 170,
        ));
  }
}
