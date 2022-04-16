// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mynotebook/addNote.dart';
import 'package:mynotebook/card.dart';
import 'package:mynotebook/main.dart';

class Notes extends StatefulWidget {
  Notes({Key? key}) : super(key: key);

  // final NotesList notesList;
  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container( 
              child: Expanded(
                child: GridView.count(
                  shrinkWrap:true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 25,
                  children: [
                    NoteCard(
                        noteTitle: 'Tears In The Eye',
                        noteDescription: "They all feel the same like how its pointless, like tears in the rain.",
                        date: "April 14 2022",
                        isStared: true),
                    NoteCard(
                        noteTitle: 'Aster Ballads',
                        noteDescription: "I ain't saying she a gold digger...",
                        date: "May 23 2022",
                        isStared: true),
                    NoteCard(
                        noteTitle: 'Cole World',
                        noteDescription: "The real is back the vill is back flow bananas here, peel this back",
                        date: "January 28 2014",
                        isStared: true),
                    NoteCard(
                        noteTitle: 'Born Sinner',
                        noteDescription: "I am a born sinner But i die better than that swear, you were always whether i need you ",
                        date: "October 3 2013",
                        isStared: false),
                    NoteCard(
                        noteTitle: 'Slim Shady',
                        noteDescription: "If you had one shout one opportunity, to seize everything you ever wanted in one moment would you capture or just let it slip..",
                        date: "July 3 2002",
                        isStared: false),
                    NoteCard(
                        noteTitle: 'X0',
                        noteDescription: "If it aint xo then it gotta go, i just won a kid show .... i am like god damn bitch i am not a tean choice ..",
                        date: "April 5 2016",
                        isStared: false),
                    NoteCard(
                        noteTitle: 'Teddy Afro',
                        noteDescription: "Leamlak betenegerew tset ale denberu ... bey endi nw heleme sifeta le hetsan lij yeraral get . atemut belot yale hateyatu medan hone lemerkebitu",
                        date: "June 18 2001",
                        isStared: true),
                    NoteCard(
                        noteTitle: 'Faith',
                        noteDescription: "Cause i din't mean to hurt him, could have been somebody's son ...",
                        date: "September 28 2008",
                        isStared: false),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_circle_down_sharp),
                Text(
                  'Scroll Down',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ButtonsWidget(
              heightSize: 25,
              text: "Add New Note",
              widthSize: 200,
              routeTo: AddNote(),
            )
          ],
        ),
      ),
    );
  }
}
