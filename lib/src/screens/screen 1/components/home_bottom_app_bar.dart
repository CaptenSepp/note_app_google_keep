import 'package:flutter/material.dart';

class HomeBottomAppBar extends StatelessWidget {
  const HomeBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      notchMargin: 5,
      clipBehavior: Clip.hardEdge,
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(borderRadius: BorderRadius.vertical()),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      child: SizedBox(width: double.infinity, height: 60),
    );
  }
}
