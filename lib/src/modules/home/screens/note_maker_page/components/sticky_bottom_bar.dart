import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sepp_note/src/modules/home/state_managment/note_maker_provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class StickyBottomAppBar extends StatelessWidget {
  final PanelController pc;
  final NoteMakerProvider provider;

  const StickyBottomAppBar({
    Key? key,
    required this.provider,
    required this.pc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final PanelController _pc;
    return CustomStickyBottomAppBar(
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {
                // context.read<NoteMakerProvider>().whichPanel;
                provider.whichPanelGet('add');
              },
            ),
            IconButton(
                icon: const Icon(Icons.palette_outlined),
                onPressed: () {
                  provider.whichPanelGet('backgroundColor');
                }),
            const SizedBox(
              width: 50,
            ),
            IconButton(
                icon: const Icon(Icons.turn_left_sharp), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.u_turn_right_sharp), onPressed: () {}),
            const SizedBox(
              width: 95,
            ),
            IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  provider.whichPanelGet('mode');
                }),
          ],
        ),
      ),
    );
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
