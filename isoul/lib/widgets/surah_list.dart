import 'package:flutter/material.dart';
import 'package:isoul/models/surah.dart';
import 'package:isoul/screens/surah_screen.dart';

class SurahList extends StatefulWidget {
  const SurahList({super.key});
  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  final GlobalKey _listKey = GlobalKey();
  List<Widget> surahItem = [];
  int index = 1;
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
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
      Surah(
        surahNameEng: 'The Opening',
        surahNameArabic: 'Al-Fatihah',
        cityRevealed: 'Makki',
        numberofAyahs: 7,
      ),
      Surah(
        surahNameEng: 'The Cow',
        surahNameArabic: 'Al-Bakhrah',
        cityRevealed: 'Madani',
        numberofAyahs: 286,
      ),
      Surah(
        surahNameEng: 'The Family of Imran',
        surahNameArabic: 'Ali-Imran',
        cityRevealed: 'Madani',
        numberofAyahs: 200,
      ),
      Surah(
        surahNameEng: 'The Women',
        surahNameArabic: 'An-Nisa',
        cityRevealed: 'Madani',
        numberofAyahs: 176,
      ),
    ];
    for (var surah in surahs) {
      surahItem.add(_buildTile(surah));
      index += 1;
    }
  }

  Widget _buildTile(Surah surah) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurahPage(surah: surah),
              ),
            );
          },
          title: Text(
            "${surah.surahNameArabic} (${surah.surahNameEng})",
            style: const TextStyle(fontSize: 15),
          ),
          leading: Text(
            "$index",
            style: const TextStyle(
              fontSize: 20,
              // fontFamily: "Cursive",
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const Divider(
          color: Color.fromARGB(148, 175, 174, 174),
          thickness: .8,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // getSurah();
    return ListView.builder(
        shrinkWrap: true,
        key: _listKey,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: surahItem.length,
        itemBuilder: (context, index) {
          return surahItem[index];
        });
  }
}
