import 'package:flutter/material.dart';

class NoteComponent extends StatelessWidget {
  const NoteComponent({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('image', style: TextStyle(fontSize: 20)),
        Text('title', style: TextStyle(fontSize: 20)),
        Text('text or checkbox', style: TextStyle(fontSize: 20)),
        Text('audio', style: TextStyle(fontSize: 20)),
      ],
    );
  }

  int? getIndex() {
    return index;
  }
}
