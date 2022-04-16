

class NotesList {
  final String title;
  final String content;
  final bool isStared = false;
  final String date;

  NotesList(this.title, this.content,this.date);

  List notes = <NotesList>[
    NotesList('hey', 'handsome', '25'),
    NotesList('Note2', 'here is content of note2', 'april 28'),
    NotesList('hey', 'handsome', '25'),
    NotesList('Note2', 'here is content of note2', 'april 28'),
    NotesList('hey', 'handsome', '25'),
    NotesList('Note2', 'here is content of note2', 'april 28'),
    NotesList('hey', 'handsome', '25'),
    NotesList('Note2', 'here is content of note2', 'april 28')
  ];
  
  List get getNotes{
    return notes;
  }
  set setNotes(NotesList note){
    notes.add(note);
  } 
}