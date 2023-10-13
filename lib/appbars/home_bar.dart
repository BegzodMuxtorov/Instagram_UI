import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: Text(
        "Instagram",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [Icon(Icons.favorite_outline_sharp),Icon(Icons.send)],

    );
  }
}
