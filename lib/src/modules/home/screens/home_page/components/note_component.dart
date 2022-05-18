import 'package:flutter/material.dart';

import '../../../../../../assets/values.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NoteComponent extends StatelessWidget {
  const NoteComponent({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Text(notes[getIndex()!], style: const TextStyle(fontSize: 20));
  }

  int? getIndex() {
    return index;
  }
}

//TODO make a GridView photo of elements inside of the notes to show on home screen

  // required this.count,
  // final int count;


  // Widget build(BuildContext context) {
  //   return MasonryGridView.count(
  //     shrinkWrap: true,
  //     itemCount: 2,
  //     itemBuilder: (context, index) {
  //       return Text(notes[getIndex()!], style: const TextStyle(fontSize: 20));
  //     },
  //     crossAxisCount: getCrossAxisCount(),
  //   );
  // }


  // getCrossAxisCount() {
  //   return 1;
  // }
