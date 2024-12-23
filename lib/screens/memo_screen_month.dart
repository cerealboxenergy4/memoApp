import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemoScreenMonth extends StatefulWidget {
  const MemoScreenMonth({super.key});

  @override
  State<MemoScreenMonth> createState() => _MemoScreenMonthState();
}

class _MemoScreenMonthState extends State<MemoScreenMonth> {
  final TextEditingController _controller = TextEditingController();

  void _saveData(String value) {
    //  Saving logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAFCBFF),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "What do you want to finish this month?",
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
              child: TextField(
                controller: _controller,
                style: GoogleFonts.gupter(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                ),
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "I will...",
                ),
                onSubmitted: (value) {
                  _saveData(value);
                  _controller.clear();
                },
              ),
              // child: IconButton(
              //     onPressed: () {},
              //     icon: Text(
              //         textAlign: TextAlign.left,
              //         "I will...",
              //         style: GoogleFonts.gupter(
              //           fontSize: 22,
              //           fontStyle: FontStyle.italic,
              //         ))),
            ),
          ),
          // here comes the memo space
        ],
      ),
    );
  }
}
