import 'package:flutter/material.dart';
import 'package:sepp_note/src/modules/home/screens/home_page.dart';
import 'package:sepp_note/src/modules/home/screens/note_maker_page.dart';
import 'package:vrouter/vrouter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
        ),
      ),
      initialUrl: '/home',
      routes: routes,
    );
  }

  List<VRouteElement> get routes {
    return [
      VWidget(
        path: '/home',
        widget: const HomePage(),
        stackedRoutes: [
          VWidget(
            path: '/note_maker_page',
            widget: const NoteMakerPage(),
          ),
        ],
      ),
    ];
  }
}
