import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PALETTE.backgroud,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Now Playing",
          style: TextStyle(
              fontSize: 30.0,
              color: PALETTE.blanco,
              fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          iconSize: 30.0,
          color: PALETTE.blanco,
          icon: const Icon( Icons.arrow_back_ios),
          tooltip: "Back",
          onPressed: () {},
        ),
        actions: [
          IconButton(
              color: PALETTE.blanco,
              iconSize: 30.0,
              icon: const Icon(Icons.more_vert),
              tooltip: "Options",
              onPressed: () {})
        ],
      ),
      body: const Center(child: Text("song screen", style: TextStyle(color: Colors.white))),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: PALETTE.backgroud.withOpacity(0.8),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blue,
          unselectedItemColor: PALETTE.blanco,
          //FIXME: Embellecer el bottomNavigationBar
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.shuffle), 
            label: "Shuffle", 
            ),
            BottomNavigationBarItem(icon: Icon(Icons.skip_previous,), 
            label: "Skip Previus", ),
            BottomNavigationBarItem(icon: Icon(Icons.pause_circle_outline), 
            activeIcon: Icon(Icons.play_circle_outline),
            label: "Pause/Play", ),
            BottomNavigationBarItem(icon: Icon(Icons.skip_next),
            label: "Skip Next", ),
            BottomNavigationBarItem(icon: Icon(Icons.repeat),
            label: "Repeat", ),
          ],
        ),
    );
  }
}
