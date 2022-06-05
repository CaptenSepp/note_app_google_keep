import 'package:flutter/material.dart';
import 'package:sepp_note/src/models/note_model.dart';

class NoteComponent extends StatelessWidget {
  final NoteModel noteModel;

  const NoteComponent({
    Key? key,
    required this.noteModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo it should get NoteModel from Hive Box

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (noteModel.imageNote != null)
          const Text('image', style: TextStyle(fontSize: 20)),
        if (noteModel.title != null)
          const Text('title', style: TextStyle(fontSize: 20)),
        if (noteModel.textCheckboxNote != null)
          const Text('text or checkbox', style: TextStyle(fontSize: 20)),
        if (noteModel.recordNote != null)
          const Text('audio', style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
