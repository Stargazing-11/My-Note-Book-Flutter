// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mynotebook/main.dart';

import 'login.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(206, 27, 56, 80)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputFiledWidget(text: '', height: 40, width: 300, lable: "Note Title",color: Color.fromARGB(211, 196, 196, 196), icon: Icon(Icons.title),),
            InputFiledWidget(text:'', height: 470,width:400, lable: "Note Content",color: Color.fromARGB(211, 196, 196, 196),icon: Icon(Icons.content_paste),),
            ButtonsWidget(heightSize: 30, text: "Save", widthSize: 200, routeTo: MyHomePage())
          ],
        ),
      ),
    );
  }
}
