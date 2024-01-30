import 'package:flutter/material.dart';
import 'package:isoul/widgets/surah_list.dart';
import 'package:isoul/custom/contants.dart' as colors;

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
        backgroundColor: colors.backgroundColor,
        centerTitle: true,
      ),
      backgroundColor: colors.backgroundColor,
      body: const SurahList(),
    );
  }
}
