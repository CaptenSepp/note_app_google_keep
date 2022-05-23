import 'package:flutter/material.dart';

class SlidingUpPanelColumn extends StatelessWidget {
  const SlidingUpPanelColumn({
    required this.iconsList,
    required this.textsList,
    Key? key,
  }) : super(key: key);

  final List<Icon> iconsList;
  final List<String> textsList;

  @override
  Widget build(BuildContext context) {
    final Icon icon;
    final Text text;

    return Column(
      children: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Icon(Icons.photo_camera_outlined),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Take photo',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Icon(Icons.photo_outlined),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Add image',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Icon(Icons.draw_outlined),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Drawing',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Icon(Icons.mic_none),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Recording',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
