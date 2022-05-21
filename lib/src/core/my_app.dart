import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:sepp_note/src/modules/home/screens/search_page/search_page.dart';

import '../modules/home/screens/home_page/home_page.dart';
import '../modules/home/screens/note_maker_page/components/sticky_bottom_bar.dart';
import '../modules/home/screens/note_maker_page/note_maker_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: SearchPage(),
      // home: NoteMaker(),
    );
  }
}
