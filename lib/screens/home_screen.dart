import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';
// TODO: Create the carrousel of recently played songs
// TODO: Create a scrollable list of all songs

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: PALETTE.backgroud,
      appBar: const TopHome(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  const [
          SizedBox(
            height: 20.0,
          ),
          RecentlyPlayed(),
          SizedBox(
            height: 200.0,
          ),
          Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text("Song ", style: TextStyle(
                fontSize: 20.0,
                color: PALETTE.blanco,
                fontWeight: FontWeight.w400
          ),
      
      ),)

          ],
        ),
    );
  }



}

class TopHome extends StatelessWidget implements PreferredSizeWidget {
  const TopHome({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title:  const Text("Home", style: TextStyle(
        fontSize: 30.0,
        color: PALETTE.blanco,
        fontWeight: FontWeight.w400
      ), ),
    leading: IconButton(
        iconSize: 30.0,
        color: PALETTE.blanco,
        icon: const Icon(Icons.account_circle_outlined),
        tooltip: "User",
        onPressed: () {},
      ),
      actions: [
        IconButton(
        color: PALETTE.blanco,
        iconSize: 30.0,
        icon: const Icon(Icons.settings_outlined),
        tooltip: "Configuration",
        onPressed: () {})
      ],
    );
  }
}

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text("Recently Played", style: TextStyle(
                fontSize: 20.0,
                color: PALETTE.blanco,
                fontWeight: FontWeight.w400
          ),
      
      ),);
  }
}
