import 'package:flutter/material.dart';
import 'package:sound/screens/home_screen.dart';
import 'package:sound/screens/pag2.dart';
import 'package:sound/screens/pag3.dart';
import 'package:sound/palette/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sound',
      theme: ThemeData(
        fontFamily: 'SourceCodePro'
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/download': (context) => const Pag2(),
        '/playlist': (context) => const Pag3(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        sizing: StackFit.expand,
        index: _selectedIndex,
        children:[
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => const HomeScreen(),
                settings: settings,
              );
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => const Pag2(),
                settings: settings,
              );
            },
          ),
          Navigator(
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) => const Pag3(),
                settings: settings,
              );
            },
          ),
        ],
      ),
      floatingActionButton: BottomNavigationBar(
          iconSize: 30.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int index){
            setState(() {
              _selectedIndex = index;       
            });
          },
          backgroundColor: PALETTE.backgroud.withOpacity(0.8),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: PALETTE.blanco,
          unselectedItemColor: PALETTE.unSelected,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), 
            label: "Home", 
            activeIcon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.download_outlined), 
            label: "Download", 
            activeIcon: Icon(Icons.download)),
            BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), 
            label: "Playlists", 
            activeIcon: Icon(Icons.library_music)),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

  