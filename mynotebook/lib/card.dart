// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NoteCard extends StatefulWidget {
  const NoteCard(
      {Key? key,
      required this.noteTitle,
      required this.noteDescription,
      required this.date,
      required this.isStared})
      : super(key: key);

  final String noteTitle;
  final String noteDescription;
  final String date;
  final bool isStared;

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  bool stared = false;
  String shortenText(String textInput) {
    String newTitle = textInput.length >= 20
        ? textInput.substring(0, 30) + '.....'
        : textInput;
    return newTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(251, 23, 42, 58),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            shortenText(widget.noteTitle),
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
              color: Colors.white,
            ),
          ),
          Text(
            shortenText(widget.noteDescription),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            widget.date,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: widget.isStared ? Icon(Icons.star) : Icon(Icons.star_border),
            onPressed: () {
              setState(() {
                stared = !stared;
              });
            },
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
