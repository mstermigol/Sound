import 'package:flutter/material.dart';
import 'package:sound/screens/home_screen.dart';
import 'package:sound/screens/pag2.dart';
import 'package:sound/screens/pag3.dart';


class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> myPages = [
      const HomeScreen(),
      const Pag2(),
      const Pag3()
    ];
    return myPages[index];
  }
}