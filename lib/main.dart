import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memoalarmapp/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEAD2AC),
        cardColor: Color(0xFF111318),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.openSans(
            color: Color(0xFF111318),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
