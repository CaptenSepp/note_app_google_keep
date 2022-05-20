import 'package:sepp_note/src/models/text_note_model.dart';
import 'image_note_model.dart';
import 'record_note_model.dart';
import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 00)
class NoteModel {
  @HiveField(0)
  final String noteModelId;
  @HiveField(1)
  final String title;
  @HiveField(2)
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
