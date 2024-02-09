import 'package:flutter/material.dart';
// ignore: library_prefixes
import '../custom/contants.dart' as colors;
import 'home_screen.dart';
import 'dart:async';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  void initState() {
    super.initState();
    startupTimer();
  }

  void startupTimer() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'iSoul',
              style: TextStyle(
                color: colors.primaryFontColor,
                fontSize: 30,
                fontFamily: "Monospace",
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your true companion',
              style: TextStyle(
                color: colors.secondaryFontColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Color.fromARGB(255, 47, 28, 78)