import 'package:flutter/material.dart';
// ignore: library_prefixes
import '../contants.dart' as AppConstants;
import 'home_screen.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppConstants.primaryColor, AppConstants.secondaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'iSoul',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Monospace",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Your true companion',
                style: TextStyle(
                  color: Color.fromARGB(255, 218, 214, 214),
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                  child: const Text("Get Started"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Color.fromARGB(255, 47, 28, 78)