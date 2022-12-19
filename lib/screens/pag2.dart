import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';

class Pag2 extends StatelessWidget {
  const Pag2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PALETTE.backgroud,
      body: Center(child: Text("2", selectionColor: Colors.white)),
      );
  }
}