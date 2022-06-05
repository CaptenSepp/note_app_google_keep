// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sepp_note/src/models/text_note_model.dart';
import 'package:sepp_note/src/modules/home/screens/note_maker_page/components/sliding_up_panel_column.dart';

import '../../../models/note_model.dart';

class NoteMakerProvider extends ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();
  //? how to get image from galaray or file manager of the user?
  //! with imagePicker Package
  // ! whichPanel Variable has add as the value at first

  SlidingUpPanelColumn whichPanelWidget = SlidingUpPanelColumn.add(
    buttons: const [
      'Take photos',
      'Add image',
      'Drawing',
      'Recording',
      'Checkboxes',
    ],
    icons: const [
      Icons.abc,
      Icons.abc,
      Icons.abc,
      Icons.abc,
      Icons.abc,
    ],
  );

  NoteModel onSave() {
    NoteModel newNoteModel = NoteModel(
      title: titleController.text,
      noteModelId: UniqueKey().toString(),
      createdDate: DateTime.now(),
      textCheckboxNote: textCheckbox(),
      //todo imageNote: image(),
      //todo recordNote: record(),
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
//------------------------------------------------------------------------------

  void whichPanelGet(String whichPanelPressed) {
    String whichPanel = whichPanelPressed;
    panelSet(whichPanel);
  }

  void panelSet(String whichPanelChose) {
    switch (whichPanelChose) {
      case 'add':
        whichPanelWidget = SlidingUpPanelColumn.add(
          buttons: const [
            'Take photos',
            'Add image',
            'Drawing',
            'Recording',
            'Checkboxes'
          ],
          icons: const [
            Icons.abc,
            Icons.abc,
            Icons.abc,
            Icons.abc,
            Icons.abc,
          ],
        );
        break;
      case 'backgroundColor':
        whichPanelWidget = SlidingUpPanelColumn.backgroudColor(
          buttons: const [
            'Color',
            'Theme',
          ],
          icons: const [
            Icons.abc,
            Icons.abc,
          ],
        );
        break;
      case 'more':
        whichPanelWidget = SlidingUpPanelColumn.more(
          buttons: const [
            'Delete',
            'Make a copy',
            'send',
            'Collaborator',
            'Labels',
          ],
          icons: const [
            Icons.abc,
            Icons.abc,
            Icons.abc,
            Icons.abc,
            Icons.abc,
          ],
        );
        break;
      default:
    }
    notifyListeners();
  }

  //! i made ImageNoteModel nulable
  //! ImagePicker Widget does that
}
