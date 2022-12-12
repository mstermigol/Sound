import 'package:flutter/material.dart';
import 'package:sound/widgets/bottom_bar.dart';
import 'package:sound/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sound',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();   
}

class _HomePageState extends State<HomePage>{
  int index = 0;
  BottomBar ?myBottomBar;

  @override
  void initState(){
    myBottomBar = BottomBar(currentIndex: (index){
      setState(() {
        this.index = index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  myBottomBar,
      backgroundColor: const Color.fromRGBO(23, 27, 31, 1),
      body: Routes(index:index),
    );
  }
}
  

