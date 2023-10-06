import 'package:flutter/material.dart';

import '../models/ayahs.dart';
import '../models/surah.dart';
import '../contants.dart' as AppConstants;

class SurahPage extends StatefulWidget {
  final Surah surah;
  SurahPage({super.key, required this.surah});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  List<Widget> ayahItem = [];
  int index = 1;
  @override
  void initState() {
    super.initState();
    _addAyah();
  }

  void _addAyah() {
    List<Ayahs> ayahs = [
      Ayahs(ayah: "Lorem ipsum dolor sit amet"),
      Ayahs(ayah: "Lorem ipsum dolor sit ametLorem ipsum dolor sit amet"),
      Ayahs(
          ayah:
              "Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet"),
      Ayahs(
          ayah:
              "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet"),
      Ayahs(ayah: "Lorem ipsum dolor sit amet"),
      Ayahs(
          ayah:
              "Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet"),
      Ayahs(ayah: "Lorem ipsum dolor sit amet"),
      Ayahs(ayah: "Lorem ipsum dolor sit ametLorem ipsum dolor sit amet"),
      Ayahs(ayah: "Lorem ipsum dolor sit amet"),
      Ayahs(
          ayah:
              "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet"),
    ];
    for (var ayah in ayahs) {
      ayahItem.add(ayahTile(ayah));
      index++;
    }
  }

  Widget ayahTile(Ayahs ayah) {
    return Column(
      children: [
        ListTile(
          trailing: Text("$index"),
          title: Text(ayah.ayah, textDirection: TextDirection.rtl),
        ),
        const Divider(
          color: Color.fromARGB(117, 190, 190, 190),
          thickness: 1.2,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.pageColorLight,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(
          widget.surah.surahNameArabic,
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: ayahItem.length,
          itemBuilder: (context, index) {
            return ayahItem[index];
          }),
    );
  }
}
