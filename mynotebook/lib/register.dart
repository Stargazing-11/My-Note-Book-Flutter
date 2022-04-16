// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mynotebook/main.dart';
import 'package:mynotebook/notes.dart';

import 'login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
                  'Register',
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
                      InputFiledWidget(text: '', color: Colors.white, lable: "Full Name", width: 270, height: 35,icon:Icon(Icons.people)),
                      InputFiledWidget(text: '', color: Colors.white, lable: "Email", width: 270, height: 35, icon: Icon(Icons.email),),
                      InputFiledWidget(text: '', color: Colors.white, lable: "Password", width:270, height: 35,icon: Icon(Icons.password),),
                      ButtonsWidget(
                        widthSize: 230,
                        heightSize: 40,
                        text: 'Register',
                        routeTo: Notes(),
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

// class InputFiledWidget extends StatelessWidget {
//   // final IconData icon;
//   final String text;

//   const InputFiledWidget({
//     Key? key,
//     // required this.icon,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(10),
//       width: 270,
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(30)),
//       child: TextFormField(
//         // The validator receives the text that the user has entered.
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return 'Please enter some text';
//           }
//           return null;
//         },
//         decoration: InputDecoration(
//             icon: Icon(
//               Icons.people,
//             ),
//             border: InputBorder.none,
//             hintText: text,
//             hintStyle: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w600,
//               letterSpacing: 2,
//             )),
//       ),
//     );
//   }
// }
