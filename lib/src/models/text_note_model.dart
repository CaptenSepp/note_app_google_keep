import 'dart:convert';
import 'package:hive/hive.dart';

part 'text_note_model.g.dart';

@HiveType(typeId: 1)
class TextCheckboxNoteModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String text;

  final bool isTextNotCheckbox;

  TextCheckboxNoteModel({
    required this.id,
    required this.text,
    this.isTextNotCheckbox = true,
  });

  String turnTextToCheckbox() {
    if (isTextNotCheckbox) {
      return text;
    }
    LineSplitter ls = const LineSplitter();
    List<String> checkboxList = ls.convert(text);
    //turns list to string
    return checkboxList.join("---");
  }
}
