import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memoalarmapp/screens/memo_screen_month.dart';
import 'package:memoalarmapp/screens/memo_screen_week.dart';
import 'package:memoalarmapp/screens/memo_screen_day.dart';
import 'package:memoalarmapp/screens/history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  void _saveData(String value) {
    //  Saving logic
  }

  void _navigateToRightScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const MemoScreenMonth()),
    );
  }

  void _navigateToLeftScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const MemoScreenWeek()),
    );
  }

  void _navigateToUpScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const MemoScreenDay()),
    );
  }

  void _navigateToDownScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const HistoryScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Offset _startPosition = Offset.zero;

    return Scaffold(
      body: GestureDetector(
        onPanStart: (details) {
          _startPosition = details.localPosition;
        },
        onPanUpdate: (details) {
          final currentPosition = details.localPosition;
          final dx = currentPosition.dx - _startPosition.dx;
          final dy = currentPosition.dy - _startPosition.dy;

          if (dx.abs() > 50 || dy.abs() > 50) {
            if (dx.abs() > dy.abs()) {
              if (dx > 0) {
                _navigateToLeftScreen(context);
              } else {
                _navigateToRightScreen(context);
              }
            } else {
              if (dy < 0) {
                _navigateToUpScreen(context);
              } else {
                _navigateToDownScreen(context);
              }
            }
            // 스와이프 판별 후, startPosition을 초기화해서 연속 스와이프 방지
            _startPosition = currentPosition;
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Text(
              "Let's get some work done!",
              style: GoogleFonts.breeSerif(
                fontSize: 80,
                height: 1.15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
