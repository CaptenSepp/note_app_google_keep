import 'package:flutter/material.dart';
import 'package:sepp_note/src/screens/home_page/home_page.dart';
import '../screens/search_page/search_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}
