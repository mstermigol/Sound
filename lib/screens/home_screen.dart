import 'package:flutter/material.dart';
import 'package:sound/palette/palette.dart';
import 'package:sound/models/song.dart';
import 'package:sound/widgets/glass_box.dart';

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
            height: 20.0,
          ),
          SizedBox(
            height: 200.0,
            child: RecentlyPlayed(),
          ),
          SizedBox(
            height: 20.0,
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
          ),
          SizedBox(
            height: 20.0,
          ),
          AllSongs()
        ],
      ),
    );
  }
}

List<Song> allSongs = [
  Song(
    'Bad Romance',
    'Lady Gaga',
    'assets/samples/holaComoVas.jpg',
  ),
  Song(
    'Sweet Child O\' Mine',
    'Guns N\' Roses',
    'assets/samples/jumpa.jpg',
  ),
  Song(
    'Bohemian Rhapsody',
    'Queen',
    'assets/samples/porDeporte.jpg',
  ),
  Song(
    'Stairway to Heaven',
    'Led Zeppelin',
    'assets/samples/sinSenal.jpg',
  ),
  Song(
    'Imagine',
    'John Lennon',
    'assets/samples/vistaAlMar.jpg',
  ),
  Song(
    'Bad Romance',
    'Lady Gaga',
    'assets/samples/holaComoVas.jpg',
  ),
  Song(
    'Sweet Child O\' Mine',
    'Guns N\' Roses',
    'assets/samples/jumpa.jpg',
  ),
  Song(
    'Bohemian Rhapsody',
    'Queen',
    'assets/samples/porDeporte.jpg',
  ),
  Song(
    'Stairway to Heaven',
    'Led Zeppelin',
    'assets/samples/sinSenal.jpg',
  ),
  Song(
    'Imagine',
    'John Lennon',
    'assets/samples/vistaAlMar.jpg',
  ),
];

class AllSongs extends StatelessWidget {
  const AllSongs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: allSongs.length + 1,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          if (index == allSongs.length) {
            return const SizedBox(
              height: 50.0,
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                color: PALETTE.secundary,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      allSongs[index].image,
                      fit: BoxFit.cover,
                      width: 40.0,
                      height: 40.0,
                      cacheWidth: 110,
                      cacheHeight: 110,
                    ),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    allSongs[index].name,
                    style: const TextStyle(
                      color: PALETTE.blanco,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    allSongs[index].artist,
                    style: const TextStyle(
                      color: PALETTE.blanco,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.more_vert,
                    color: PALETTE.blanco,
                  ),
                ),
              ),
            ),
          );
        },
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

List<Song> recentSongs = [
  Song("Hola como vas", "Eladio Carrion", ('assets/samples/holaComoVas.jpg')),
  Song("Jumpa", "Bad bunny", ('assets/samples/jumpa.jpg')),
  Song("Por deporte", "Paulo Londra", ('assets/samples/porDeporte.jpg')),
  Song("Sin señal", "Quevedo", ('assets/samples/sinSenal.jpg')),
  Song("Vista al mar", "Quevedo", ('assets/samples/vistaAlMar.jpg')),
];

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({super.key});

  @override
  RecentlyPlayedState createState() => RecentlyPlayedState();
}

class RecentlyPlayedState extends State<RecentlyPlayed> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        scrollDirection: Axis.horizontal,
        key: _listKey,
        initialItemCount: recentSongs.length,
        itemBuilder: (context, index, animation) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: FadeTransition(
              opacity: animation,
              child: InkWell(
                onTap: () {
                  print("Hola");
                    
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: SizedBox(
                    width: 200.0,
                    child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Image.asset(
                            recentSongs[index].image,
                            fit: BoxFit.cover,
                            width: 200.0,
                            height: 200.0,
                            cacheWidth: 525,
                            cacheHeight: 525,
                          ),
                          Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GlassBox(
                              height: 45.0,
                              width: 200.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 5.0),
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      recentSongs[index].name,
                                      style: const TextStyle(
                                        color: PALETTE.blanco,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5.0, left: 10.0, right: 5.0),
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      recentSongs[index].artist,
                                      style: const TextStyle(
                                        color: PALETTE.blanco,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
