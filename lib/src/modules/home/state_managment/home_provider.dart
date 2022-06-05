import 'package:flutter/material.dart';
import 'package:sepp_note/src/DB/notes_db.dart';
import 'package:sepp_note/src/models/note_model.dart';
import 'package:vrouter/vrouter.dart';

class HomeProvider extends ChangeNotifier {
  final BuildContext context;
  final notesDB = NotesDB.instanceGetter();
  List<NoteModel>? noteModels;

  HomeProvider(this.context) {
    noteModels = notesDB.getAllNotes();
    notifyListeners();
  }

  void goToNoteMakerPage() {
    context.vRouter.to('/note_maker_page');
  }
}
