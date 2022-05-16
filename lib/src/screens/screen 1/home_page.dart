import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sepp_note/src/screens/screen%201/components/home_bottom_app_bar.dart';
import 'package:sepp_note/src/screens/screen%201/components/home_page_search_bar.dart';
import 'package:sepp_note/src/screens/screen%201/home_page_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageProvider(),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: const Drawer(),
          body: Column(
            children: const [
              SizedBox(height: 50),
              HomePageSearchBar(),
            ],
          ),
          bottomNavigationBar: const HomePageBottomAppBar(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            onPressed: () {},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked),
    );
  }
}
