import 'package:flutter/material.dart';
import 'package:sepp_note/src/models/text_note_model.dart';

import '../../../models/image_note_model.dart';
import '../../../models/note_model.dart';
import '../../../models/record_note_model.dart';

class NoteMakerProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();
  //TODO how to get image from galaray or file manager of the user?

  NoteModel onSave() {
    NoteModel newNoteModel = NoteModel(
      title: titleController.text,
      noteModelId: UniqueKey().toString(),
      createdDate: DateTime.now(),
      textCheckboxNote: textCheckbox(),
      // imageNote: image(),
      // recordNote: record(),
    );

    return newNoteModel;
  }

  TextCheckboxNoteModel? textCheckbox() {
    if (textController.text != '') {
      return TextCheckboxNoteModel(
          id: UniqueKey().toString(), text: textController.text);
    } else {
      return null;
    }
  }
  //TODO i made ImageNoteModel nulable
  //TODO ImagePicker Widget does that
//   ImageNoteModel? image() {
//     if () {
//       return ImageNoteModel(
//           id: UniqueKey().toString(), imagesList: imageList());
//     } else {
//       return null;
//     }
//   }

//   List<Image>? imageList() {
//     List<Image>? list;
//     return list;
//   }

//   RecordNoteModel? record() {
//     if () {
//       return RecordNoteModel(id: UniqueKey().toString(), sound: Sound());
//     } else {
//       return null;
//     }
//   }
}
