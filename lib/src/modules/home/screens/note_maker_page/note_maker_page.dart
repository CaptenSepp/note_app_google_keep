import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../../assets/values.dart';
import '../../state_managment/note_maker_provider.dart';
import 'components/note_maker_app_bar.dart';
import 'components/sliding_up_panel_column.dart';
import 'components/sticky_bottom_bar.dart';

class NoteMaker extends StatelessWidget {
  const NoteMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteMakerProvider(),
      child: const _NoteMaker(),
    );
  }
}

class _NoteMaker extends StatelessWidget {
  const _NoteMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final provider = context.watch<NoteMakerProvider>();
    PanelController pc = PanelController();

    //
    return Scaffold(
      body: SlidingUpPanel(
        defaultPanelState: PanelState.CLOSED,
        controller: pc,
        maxHeight: 180,
        minHeight: 0,
        backdropEnabled: true,
        backdropColor: Colors.black,
        backdropOpacity: 0.7,
        panel: SizedBox(
          height: 150,
          child: SlidingUpPanelColumn(),
        ),
        body: Column(
          children: [
            Container(
              height: 110,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: NoteMakerAppBar(),
              ),
            ),

            //images go on top of the title, so means here
            Container(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                cursorColor: Colors.black,
                cursorHeight: 30,
                cursorWidth: cursorWidth,
                //
                controller: provider.titleController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 300.0,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  cursorWidth: cursorWidth,
                  maxLines: null,
                  //
                  controller: provider.textController,
                  decoration: const InputDecoration(
                    hintText: "Note",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            //text here
            Container(),

            //audio here
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: StickyBottomAppBar(pc: pc, provider: provider),
    );
  }
}
