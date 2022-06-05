import 'package:flutter/material.dart';

class SlidingUpPanelColumn extends StatelessWidget {
  List<String> buttons;
  List<IconData> icons;
  SlidingUpPanelColumn.add({
    required this.buttons,
    required this.icons,
    Key? key,
  }) : super(key: key);
  SlidingUpPanelColumn.backgroudColor({
    required this.buttons,
    required this.icons,
    Key? key,
  }) : super(key: key);
  SlidingUpPanelColumn.more({
    required this.buttons,
    required this.icons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //!add the values here to use in widgets

    return Column(
      children: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                // Icon(Icons.photo_camera_outlined),
                Icon(icons[0]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    buttons[0],
                    style: const TextStyle(fontSize: 18),
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
              children: [
                Icon(icons[1]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    buttons[1],
                    style: const TextStyle(fontSize: 18),
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
              children: [
                Icon(icons[2]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    buttons[2],
                    style: const TextStyle(fontSize: 18),
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
              children: [
                Icon(icons[3]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    buttons[3],
                    style: const TextStyle(fontSize: 18),
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
