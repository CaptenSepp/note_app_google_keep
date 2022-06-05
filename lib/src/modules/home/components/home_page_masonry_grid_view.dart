import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:sepp_note/src/models/note_model.dart';

import 'note_component.dart';

class HomePageMasonryGridView extends StatelessWidget {
  final List<NoteModel> noteModels;

  const HomePageMasonryGridView({
    Key? key,
    required this.noteModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          itemCount: noteModels.length,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: NoteComponent(
                noteModel: noteModels[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
