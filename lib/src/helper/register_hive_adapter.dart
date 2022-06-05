import 'package:hive/hive.dart';
import 'package:sepp_note/src/models/image_note_model.dart';
import 'package:sepp_note/src/models/note_model.dart';
import 'package:sepp_note/src/models/record_note_model.dart';
import 'package:sepp_note/src/models/text_note_model.dart';

void registerHiveAdapter() {
  Hive.registerAdapter(NoteModelAdapter());
  Hive.registerAdapter(ImageNoteModelAdapter());
  Hive.registerAdapter(RecordNoteModelAdapter());
  Hive.registerAdapter(TextCheckboxNoteModelAdapter());
}
