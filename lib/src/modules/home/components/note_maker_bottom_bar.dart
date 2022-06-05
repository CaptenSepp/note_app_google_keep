import 'package:flutter/material.dart';

class NoteMakerBottomBar extends StatelessWidget {
  final void Function()? onAddIconPress;
  final void Function()? onChangeBackgroundIconPress;
  final void Function()? onMoreIconPress;

  const NoteMakerBottomBar({
    Key? key,
    this.onAddIconPress,
    this.onChangeBackgroundIconPress,
    this.onMoreIconPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.add_box_outlined),
          onPressed: onAddIconPress,
        ),
        IconButton(
          icon: const Icon(Icons.palette_outlined),
          onPressed: onChangeBackgroundIconPress,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: onMoreIconPress,
        ),
      ],
    );
  }
}
