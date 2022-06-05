import 'package:flutter/material.dart';

import '../modules/home/screens/home_page/home_page.dart';

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
