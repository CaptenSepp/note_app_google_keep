import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sepp_note/src/core/my_app.dart';
import 'package:sepp_note/src/models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Box<NoteModel> notesBox = await Hive.openBox('notesBox');

  print(notesBox);
  ValueListenable;
  runApp(
    const MyApp(),
  );
}
