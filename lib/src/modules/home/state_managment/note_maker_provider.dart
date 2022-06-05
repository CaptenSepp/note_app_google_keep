// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sepp_note/src/models/text_note_model.dart';
import 'package:sepp_note/src/modules/home/components/sliding_up_panel_column.dart';

import '../../../models/note_model.dart';

class NoteMakerProvider extends ChangeNotifier {
  final BuildContext context;
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();

  //? how to get image from galaray or file manager of the user?
  //! with imagePicker Package
  // ! whichPanel Variable has add as the value at first

  SlidingUpPanelColumn whichPanelWidget = const SlidingUpPanelColumn(
    buttons: [
      'Take photos',
      'Add image',
      'Drawing',
      'Recording',
      'Checkboxes',
    ],
    icons: [
      Icons.abc,
      Icons.abc,
      Icons.abc,
      Icons.abc,
      Icons.abc,
    ],
  );

  NoteMakerProvider(this.context);

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

  void showAddPanel() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => const SlidingUpPanelColumn(
        buttons: [
          'Take photos',
          'Add image',
          'Drawing',
          'Recording',
          'Checkboxes'
        ],
        icons: [
          Icons.abc,
          Icons.abc,
          Icons.abc,
          Icons.abc,
          Icons.abc,
        ],
      ),
    );
  }

  void showChangeBackgroundPanel() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => const SlidingUpPanelColumn(
        buttons: [
          'Color',
          'Theme',
        ],
        icons: [
          Icons.abc,
          Icons.abc,
        ],
      ),
    );
  }

  void showMorePanel() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => const SlidingUpPanelColumn(
        buttons: [
          'Delete',
          'Make a copy',
          'send',
          'Collaborator',
          'Labels',
        ],
        icons: [
          Icons.abc,
          Icons.abc,
          Icons.abc,
          Icons.abc,
          Icons.abc,
        ],
      ),
    );
  }

  //! i made ImageNoteModel nulable
  //! ImagePicker Widget does that
}
