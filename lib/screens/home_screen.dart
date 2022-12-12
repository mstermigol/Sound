import 'package:flutter/material.dart';

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
              fontFamily: "roboto"
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


