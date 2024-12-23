import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "What do you want to finish today?",
                textAlign: TextAlign.left,
                style: GoogleFonts.openSans(
                  color: Theme.of(context).cardColor,
                  fontSize: 37,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: IconButton(
                iconSize: 50,
                onPressed: () {},
                icon: Icon(Icons.more_vert_sharp),
              ),
            ), // expand and show existing list if pressed
          ),
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Text(
                      textAlign: TextAlign.left,
                      "I will...",
                      style: GoogleFonts.gupter(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ))),
            ),
          ),
          // here comes the memo space
        ],
      ),
    );
  }
}
