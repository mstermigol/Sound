import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: PALETTE.backgroud,
      body: Center(child: Text("song screen", selectionColor: Colors.white)),
      );
  }
}