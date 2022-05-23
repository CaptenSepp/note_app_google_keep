import 'package:flutter/material.dart';
import 'package:sepp_note/src/models/text_note_model.dart';
import 'package:sepp_note/src/modules/home/screens/note_maker_page/components/sliding_up_panel_column.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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

  // whichPanel(PanelController pc, String uk) {
  //   if (uk == 'add') {
  //     List<IconData> iconDatasList = [
  //       Icons.photo_camera_outlined,
  //       Icons.photo_outlined,
  //       Icons.draw_outlined,
  //       Icons.mic_none
  //     ];
  //     List<String> textsList = [
  //       'Take photo',
  //       'Add iamge',
  //       'Drawing',
  //       'Recording'
  //     ];
  //     List columnList = [];
  //     columnList.add(iconDatasList);
  //     columnList.add(textsList);
  //     return columnList;
  //   }
  // }
}
