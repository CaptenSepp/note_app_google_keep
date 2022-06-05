import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sepp_note/src/constants/values.dart';
import 'package:sepp_note/src/modules/home/components/note_maker_bottom_bar.dart';
import 'package:sepp_note/src/modules/home/state_managment/note_maker_provider.dart';

class NoteMakerPage extends StatelessWidget {
  const NoteMakerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteMakerProvider(context),
      child: const _NoteMakerPage(),
    );
  }
}

class _NoteMakerPage extends StatelessWidget {
  const _NoteMakerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<NoteMakerProvider>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.push_pin_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.archive_outlined),
          ),
        ],
      ),
      //todo: use AppBar
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            //images go on top of the title, so means here
            TextField(
              cursorColor: Colors.black,
              cursorHeight: 30,
              cursorWidth: cursorWidth,
              //
              controller: provider.titleController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Title',
                hintStyle: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
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
            NoteMakerBottomBar(
              onAddIconPress: context.read<NoteMakerProvider>().showAddPanel,
              onChangeBackgroundIconPress:
                  context.read<NoteMakerProvider>().showChangeBackgroundPanel,
              onMoreIconPress: context.read<NoteMakerProvider>().showMorePanel,
            ),
          ],
        ),
      ),
    );
  }
}
