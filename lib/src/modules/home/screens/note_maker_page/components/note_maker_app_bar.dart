import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteMakerAppBar extends StatelessWidget {
  const NoteMakerAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back, size: 30),
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.50,
          child: const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.push_pin_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.archive_outlined)),
      ],
    );
  }
}
