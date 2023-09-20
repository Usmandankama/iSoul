import 'package:flutter/material.dart';
import 'package:isoul/models/surah.dart';

class SurahList extends StatefulWidget {
  const SurahList({super.key});

  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  List<Widget> surahItem = [];
  @override
  void initState() {
    super.initState();
    _addSurah();
  }

  void _addSurah() {
    List<Surah> surahs = [
      Surah(
          surahNameEng: 'The Opening',
          surahNameArabic: 'Al-Fatihah',
          cityRevealed: 'Mecca',
          numberofAyahs: 7,
          ayahTranslation: "",
          basmallah: 'Bismillahi rahmanir Raheem',
          ayahs: "")
    ];
    for (var product in surahs) {
      surahItem.add(_buildTile(product));
    }
  }

  Widget _buildTile(Surah ssurah) {
    return Container(
      // title: Text(ssurah.surahNameArabic),
      // subtitle: Text(ssurah.surahNameEng),
      height: 200,
      width: 300,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.yellow,Colors.black])
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        itemCount: surahItem.length,
        itemBuilder: (context, index) {
          return surahItem[index];
        });
  }
}
