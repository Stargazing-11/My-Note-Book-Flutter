// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mynotebook/main.dart';
import 'package:mynotebook/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/notebookimage.png',
                color: Colors.white.withOpacity(0.5),
                colorBlendMode: BlendMode.modulate,
              ),
              Positioned(
                top: 45,
                left: 120,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 50,
                child: Form(
                  child: Column(
                    children: [
                      InputFiledWidget(
                        text: '',
                        height: 40,
                        width: 270,
                        lable: 'User Name',
                        color: Colors.white,
                        icon: Icon(Icons.password),
                      ),
                      InputFiledWidget(
                          text: '',
                          height: 40,
                          width: 270,
                          lable: "Password",
                          color: Colors.white,
                          icon: Icon(Icons.password)),
                      ButtonsWidget(
                        widthSize: 230,
                        heightSize: 40,
                        text: 'Login',
                        routeTo: Register(),
                      ),
                      Text(
                        'Don\'t have accout?',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputFiledWidget extends StatelessWidget {
  // final IconData icon;
  final String text;
  final double height;
  final double width;
  final String lable;
  final Color color;
  final Icon icon;

  const InputFiledWidget({
    Key? key,
    // required this.icon,
    required this.text,
    required this.height,
    required this.width,
    required this.lable,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        decoration: InputDecoration(
            icon: icon,
            border: InputBorder.none,
            label: Text(
              lable,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            )),
      ),
    );
  }
}
