import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../../../assets/values.dart';

class HomePageStaggeredGrid extends StatelessWidget {
  const HomePageStaggeredGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageStaggeredGridProvider(),
      child: const _HomePageStaggeredGrid(),
    );
  }
}

//TODO in provider nemikhad?
class HomePageStaggeredGridProvider extends ChangeNotifier {}

class _HomePageStaggeredGrid extends StatelessWidget {
  const _HomePageStaggeredGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(
            notes.length,
            (index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text(notes[index], style: const TextStyle(fontSize: 20)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
