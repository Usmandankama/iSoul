import 'package:flutter/material.dart';
import 'package:isoul/widgets/surah_list.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al-Quran'),
        backgroundColor: const Color.fromARGB(148, 197, 96, 255),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(148, 197, 96, 255),
      body: ListView(
        children: [SurahList()],
      ),
    );
  }
}
