// ignore_for_file: prefer_const_constructors, unnecessary_new, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mynotebook/login.dart';
import 'package:mynotebook/notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 87, 87, 87),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Note Book',
              style: TextStyle(
                fontSize: 36,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/notebookpicture.png',
                  color: Colors.white.withOpacity(0.3),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
            ),
            Text(
              'Welcome to MyNoteBook',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 40),
              width: 195,
              child: Text(
                'You can add new notes to your list of notes and save them permanently.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ButtonsWidget(
              widthSize: 290,
              heightSize: 40,
              text: 'Get Started',
              routeTo: Login(),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  // const ButtonsWidget({
  //   Key? key,
  // }) : super(key: key);

  final String text;
  final double widthSize;
  final double heightSize;
  final Widget routeTo;
  const ButtonsWidget(
      {Key? key,
      required this.heightSize,
      required this.text,
      required this.widthSize,
      required this.routeTo})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: ElevatedButton(
        child: Text(text, style: TextStyle(fontSize: 20),),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => routeTo));
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(125, 100, 148, 83),
          fixedSize: Size(widthSize, heightSize),
          textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
