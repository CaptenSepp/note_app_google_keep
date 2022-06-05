import 'package:flutter/material.dart';

class SlidingUpPanelColumn extends StatelessWidget {
  final List<String> buttons;
  final List<IconData> icons;

  const SlidingUpPanelColumn({
    Key? key,
    required this.buttons,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //!add the values here to use in widgets

    return ListView.builder(
      // ! research shirinkWrap
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: buttons.length,
      itemBuilder: (context, index) => GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              // Icon(Icons.photo_camera_outlined),
              Icon(icons[index]),
              const SizedBox(width: 20),
              Text(
                buttons[index],
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
