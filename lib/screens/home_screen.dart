import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';
import 'package:sound/models/song.dart';

// TODO: Create the carrousel of recently played songs
// TODO: Create a scrollable list of all songs

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PALETTE.backgroud,
      appBar: const TopHome(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Recently Played",
              style: TextStyle(
                  fontSize: 20.0,
                  color: PALETTE.blanco,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 200.0,
            child: RecentlyPlayed(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Song ",
              style: TextStyle(
                  fontSize: 20.0,
                  color: PALETTE.blanco,
                  fontWeight: FontWeight.w400),
            ),
          )
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
      title: const Text(
        "Home",
        style: TextStyle(
            fontSize: 30.0, color: PALETTE.blanco, fontWeight: FontWeight.w400),
      ),
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

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({super.key});

  @override
  RecentlyPlayedState createState() => RecentlyPlayedState();
}

class RecentlyPlayedState extends State<RecentlyPlayed> {
  final recentSongs = [
    Song("Hola como vas", "Eladio Carrion",
        Image.asset('assets/samples/holaComoVas.jpg')),
    Song("Jumpa", "Bad bunny", Image.asset('assets/samples/jumpa.jpg')),
    Song("Por deporte", "Paulo Londra",
        Image.asset('assets/samples/porDeporte.jpg')),
    Song("Sin señal", "Quevedo", Image.asset('assets/samples/sinSenal.jpg')),
    Song("Vista al mar", "Quevedo",
        Image.asset('assets/samples/vistaAlMar.jpg')),
  ];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        scrollDirection: Axis.horizontal,
        key: _listKey,
        initialItemCount: recentSongs.length,
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
            child: SizedBox(
              width: 200.0,
              height: 200.0,
              child: Stack(
                children: [
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: recentSongs[index].image.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          recentSongs[index].name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          recentSongs[index].artist,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
