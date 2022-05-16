import 'package:flutter/material.dart';

class HomePageSearchBar extends StatelessWidget {
  const HomePageSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
