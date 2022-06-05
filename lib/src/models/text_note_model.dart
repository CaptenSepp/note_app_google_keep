import 'dart:convert';

class TextCheckboxNoteModel {
  final String id;
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
