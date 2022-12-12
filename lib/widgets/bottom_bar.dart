import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function currentIndex;
  const BottomBar({super.key, required this.currentIndex});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>{
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
            _currentIndex = index;
            widget.currentIndex(index);        
            });
          },
          backgroundColor: const Color.fromRGBO(23, 27, 31, 1).withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color.fromRGBO(153,156,165,1),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), 
            label: "Home", 
            activeIcon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(icon: Icon(Icons.download_outlined), 
            label: "Download", 
            activeIcon: Icon(Icons.download)),
            BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), 
            label: "Playlists", 
            activeIcon: Icon(Icons.library_music)),
          ],
        );
  }
}
