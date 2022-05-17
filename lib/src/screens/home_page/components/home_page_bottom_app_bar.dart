import 'package:flutter/material.dart';

class HomePageBottomAppBar extends StatelessWidget {
  const HomePageBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 5,
      clipBehavior: Clip.hardEdge,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(borderRadius: BorderRadius.vertical()),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(children: [
          IconButton(
              icon: const Icon(Icons.check_box_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.draw_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.mic_none), onPressed: () {}),
          IconButton(icon: const Icon(Icons.photo_outlined), onPressed: () {}),
        ]),
      ),
    );
  }
}
