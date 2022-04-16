// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final double widthSize;
  final double heightSize;
  final Widget routeTo;
  final double margin;
  const Buttons(
      {Key? key,
      required this.heightSize,
      required this.text,
      required this.widthSize,
      required this.routeTo,required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      // margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: ElevatedButton(
        child: Text('Get Started'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => routeTo),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(125, 100, 148, 83),
          minimumSize: Size(290, 40),
          textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
