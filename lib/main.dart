

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:instaui_full/view/home_page.dart';

void main(List<String> args) {
  runApp(Ui());
}

class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
