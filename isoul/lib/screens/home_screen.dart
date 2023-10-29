import 'package:flutter/material.dart';
import 'package:isoul/widgets/surah_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Create the main application with MaterialApp.
      debugShowCheckedModeBanner: false,
      // Disable the debug banner.
      home: Scaffold(
        // Create the main screen scaffold.
        backgroundColor: Colors.black,
        // Set the background color to black.
        appBar: AppBar(
          title: const Text('AL-QURAN'),
          centerTitle: true,
        ),
        // Create an AppBar with the app title.
        resizeToAvoidBottomInset: false,
        // Prevent the screen from resizing when the keyboard appears.
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            // Create a ListView to hold the SurahList widget.
            SurahList(),
          ],
        ),
      ),
    );
  }
}
