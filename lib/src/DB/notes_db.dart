import 'package:hive/hive.dart';
import 'package:sepp_note/src/models/note_model.dart';

class NotesDB {
  static NotesDB? _dataBaseInstance;
  static const String notesBoxName = 'notesBox';

  NotesDB._();

  late Box<NoteModel> noteModelBox;

  factory NotesDB.instanceGetter() {
    _dataBaseInstance ??= NotesDB._();
    return _dataBaseInstance!;
  }

  Future<void> initialize() async {
    noteModelBox = await Hive.openBox(notesBoxName);
  }

  void saveById(NoteModel noteModel) {
    noteModelBox.put(noteModel.noteModelId, noteModel);
  }

  NoteModel? getNoteModelByID(String id) {
    return noteModelBox.get(id);
  }

  List<NoteModel> getAllNotes() {
    final noteModels = <NoteModel>[];
    noteModels.addAll(noteModelBox.values);
    return noteModels;
  }

  void disposeDB() {
    noteModelBox.close();
  }
}
