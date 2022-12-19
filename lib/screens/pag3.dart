import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';

class Pag3 extends StatelessWidget {
  const Pag3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PALETTE.backgroud,
      body: Center(child: Text("3", selectionColor: Colors.white)),
      );
  }
}
