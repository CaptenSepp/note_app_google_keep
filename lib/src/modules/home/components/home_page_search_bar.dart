import 'package:flutter/material.dart';
import 'package:sepp_note/src/modules/home/screens/search_page.dart';

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
            Expanded(
              child: GestureDetector(
                // behavior: HitTestBehavior.translucent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
              ),
            ),
            IconButton(
                icon: const Icon(Icons.view_agenda_outlined, size: 25),
                onPressed: () {}),
            IconButton(
                //todo here should change to photo from network or gallery or ...
                icon: const Icon(Icons.person_sharp, size: 30),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
