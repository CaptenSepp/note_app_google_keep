import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:sepp_note/src/screens/home_page/components/home_page_bottom_app_bar.dart';
import 'package:sepp_note/src/screens/home_page/components/home_page_search_bar.dart';
import 'package:sepp_note/src/screens/home_page/home_page_provider.dart';

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
            children: [
              const SizedBox(height: 50),
              const HomePageSearchBar(),
              // SizedBox(height: MediaQuery.of(context),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(10, (index) {
                      return Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )),
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: const TextStyle(fontSize: 50),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
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
