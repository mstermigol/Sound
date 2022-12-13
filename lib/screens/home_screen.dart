import 'package:flutter/material.dart';
// TODO: Create the carrousel of recently played songs
// TODO: Create a scrollable list of all songs

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
              iconSize: 30.0,
              color: Colors.white,
              icon: const Icon(Icons.account_circle_outlined),
              tooltip: "User",
              onPressed: () {},
            ),
            const Text("Home", style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.w400
            ), ),
            IconButton(
              color: Colors.white,
              iconSize: 30.0,
              icon: const Icon(Icons.settings_outlined),
              tooltip: "Configuration",
              onPressed: () {}),
            ],
            ),
          ),
          Expanded(child: Container())
          ],
        ),
    );
  }



}


