import 'package:flutter/material.dart';

class StickyBottomAppBar extends StatelessWidget {
  const StickyBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomStickyBottomAppBar(
        child: BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Row(
        children: [
          IconButton(
              icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.palette_outlined), onPressed: () {}),
          const SizedBox(
            width: 50,
          ),
          IconButton(icon: const Icon(Icons.turn_left_sharp), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.u_turn_right_sharp), onPressed: () {}),
          const SizedBox(
            width: 95,
          ),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
    ));
  }
}

class CustomStickyBottomAppBar extends StatelessWidget {
  const CustomStickyBottomAppBar({Key? key, required this.child})
      : super(key: key);
  final BottomAppBar child;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
      child: child,
    );
  }
}
