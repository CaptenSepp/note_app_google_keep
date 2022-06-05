import 'package:flutter/material.dart';

import '../modules/home/screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
        ),
      ),
      home: const HomePage(),
      // home: SearchPage(),
      // home: NoteMaker(),
    );
  }
}
