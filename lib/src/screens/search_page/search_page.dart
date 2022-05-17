import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => SearchPageProvider(), child: const _SearchPage());
  }
}

class SearchPageProvider extends ChangeNotifier {}

class _SearchPage extends StatelessWidget {
  const _SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
