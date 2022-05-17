import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sepp_note/src/screens/home_page/components/home_page_bottom_app_bar.dart';
import 'package:sepp_note/src/screens/home_page/components/home_page_search_bar.dart';
import 'package:sepp_note/src/screens/home_page/home_page_provider.dart';

import 'components/home_page_masonry_grid_view.dart';

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
              // SizedBox(height: MediaQuery.of(context),
              HomePageMasonryGridView(),
            ],
          ),
          bottomNavigationBar: const HomePageBottomAppBar(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.add,
              color: Colors.orange,
              size: 45,
            ),
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
