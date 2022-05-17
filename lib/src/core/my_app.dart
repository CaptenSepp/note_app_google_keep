import 'package:flutter/material.dart';
import 'package:sepp_note/src/screens/home_page/home_page.dart';

import '../screens/search_page/search_page.dart';

MaterialApp myApp() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: HomePage(),
    home: SearchPage(),
  );
}
