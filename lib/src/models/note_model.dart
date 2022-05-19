
import 'text_checkbox_note_model';
import 'image_note_model.dart';
import 'record_note_model.dart';

class NoteModel {
  final String noteModelId;
  final String title;
  final DateTime createdDate;

  final TextCheckboxNoteModel? textCheckboxNote;
  final ImageNoteModel? imageNote;
  final RecordNoteModel? recordNote;

  NoteModel({
    required this.title,
    required this.noteModelId,
    required this.createdDate,
    this.textCheckboxNote,
    this.imageNote,
    this.recordNote,
  });
}
