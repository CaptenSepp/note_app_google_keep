import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../assets/values.dart';
import '../../state_managment/note_maker_provider.dart';
import 'components/note_maker_app_bar.dart';
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
    //TODO chera bayad in final bashe, chera alan meghdar nadare, ma ke behesh meghdar dadim? meghdaresh await hast?
    final provider = context.watch<NoteMakerProvider>();
    //
    return Scaffold(
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
                controller: provider.titleController,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: TextStyle(fontSize: 25))),
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
                controller: provider.noteController,
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
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: const StickyBottomAppBar(),
    );
  }
}

