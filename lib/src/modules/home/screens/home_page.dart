import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/home_page_bottom_app_bar.dart';
import '../components/home_page_masonry_grid_view.dart';
import '../components/home_page_search_bar.dart';
import '../state_managment/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(context),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    return Scaffold(
      drawer: const Drawer(),
      body: AnimatedSwitcher(
        duration: const Duration(
          milliseconds: 350,
        ),
        child: (provider.noteModels == null)
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  const SizedBox(height: 50),
                  const HomePageSearchBar(),
                  // SizedBox(height: MediaQuery.of(context),
                  HomePageMasonryGridView(
                    noteModels: provider.noteModels!,
                  ),
                ],
              ),
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
        onPressed: context.read<HomeProvider>().goToNoteMakerPage,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
