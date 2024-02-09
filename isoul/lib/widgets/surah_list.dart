import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isoul/models/surah.dart';
import 'package:isoul/screens/surah_content.dart';
import 'package:isoul/custom/contants.dart' as colors;

class SurahList extends StatefulWidget {
  const SurahList({super.key});
  // This class represents a stateful widget for displaying a list of Surahs.
  @override
  State<SurahList> createState() => _SurahListState();
}

class _SurahListState extends State<SurahList> {
  final GlobalKey _listKey = GlobalKey();
  List<dynamic> ayahts = [];
  List<dynamic> ayahtsTranslated = [];
  List<dynamic> surats = [];
  List<dynamic> suratsTranslated = [];
  bool connectionError = false;
  // List<dynamic> surahFromLocal = [];

  @override
  void initState() {
    super.initState();
    // Initialize the widget state by fetching Quran data when it's created.
    readJsonData();
    // fetchQuranData();
  }

  void readJsonData() async {
    final String responses =
        await rootBundle.loadString('assets/data/quran.json');
    final data = await json.decode(responses);
    final String responsesTranslated =
        await rootBundle.loadString('assets/data/translation.json');
    final dataTranslated = await json.decode(responsesTranslated);
    setState(() {
      surats = data['surahs'];
      suratsTranslated = dataTranslated['surahs'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      key: _listKey,
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: surats.length,
      itemBuilder: (context, index) {
        final surah = surats[index];
        final surahTranslated = suratsTranslated[index];
        final listOfAyahs = surah['ayahs'];
        ayahts = listOfAyahs;
        final listOfAyahsTranslated = surahTranslated['ayahs'];
        ayahtsTranslated = listOfAyahsTranslated;
        final name = surah['name'];
        final engName = surah['englishNameTranslation'];
        var surat = Surah(
            surahNameEng: surah['englishNameTranslation'],
            surahNameArabic: surah['name'],
            cityRevealed: surah['revelationType'],
            ayahts: listOfAyahs,
            ayahtsTranslated: listOfAyahsTranslated
            );
        try {
          return connectionError
              ? Center(
                  child: Text(
                  "Connection Error",
                  style:
                      TextStyle(color: colors.primaryFontColor, fontSize: 40),
                ))
              // If there is a connection error, display an error message.
              : Column(
                  children: [
                    ListTile(
                      textColor: colors.secondaryFontColor,
                      onTap: () {
                        // Navigate to a Surah details page on item click.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SurahContent(surah: surat),
                          ),
                        );
                      },
                      leading: Text(
                        engName,
                        style: const TextStyle(fontSize: 15),
                      ),
                      trailing: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
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
        } catch (e) {
          return const Center(
            child: Text("Connection Error"),
          );
        }
      },
    );
  }
}
