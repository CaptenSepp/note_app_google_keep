import 'package:hive/hive.dart';

part 'record_note_model.g.dart';

@HiveType(typeId: 3)
class RecordNoteModel {
  @HiveField(0)
  final String id;

  RecordNoteModel({
    required this.id,
  });
}
