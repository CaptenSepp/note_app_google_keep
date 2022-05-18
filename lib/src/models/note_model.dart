
import 'package:flutter/material.dart';

class NoteModel {
  final List<dynamic> noteElementsList;
  final String noteModelId;
  final String title;
  final DateTime createdDate;
  final TextCheckboxNoteModel? textCheckboxNote;
  final ImageNoteModel? imageNote;
  final RecordNoteModel? recordNote;

  NoteModel({
    required this.noteElementsList,
    required this.title,
    required this.noteModelId,
    required this.createdDate,
    this.textCheckboxNote,
    this.imageNote,
    this.recordNote,
  });
}

class RecordNoteModel {}

class ImageNoteModel {
  final Image image;

  ImageNoteModel(this.image);
}

class TextCheckboxNoteModel {
  final String text;
  final bool isTextOrCheckbox;

  TextCheckboxNoteModel({
    required this.text,
    //TODO how can i write it better to understand
    this.isTextOrCheckbox = true,
  });
  // bool isTextOrCheckbox() {
  //   bool result = true;
  //   return result;
  // }
}
