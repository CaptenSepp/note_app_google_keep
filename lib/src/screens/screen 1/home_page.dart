import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sepp_note/src/screens/screen%201/components/home_bottom_app_bar.dart';
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
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            // Drawer();
                          }),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.68,
                      ),
                      IconButton(
                          icon: const Icon(Icons.search), onPressed: () {})
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const HomeBottomAppBar(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            onPressed: () {},
            tooltip: 'Increment Counter',
            child: const Icon(Icons.add, color: Colors.orange, size: 45),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked),
    );
  }
}
